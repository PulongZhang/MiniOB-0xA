/* Copyright (c) 2021 Xie Meiyi(xiemeiyi@hust.edu.cn) and OceanBase and/or its affiliates. All rights reserved.
miniob is licensed under Mulan PSL v2.
You can use this software according to the terms and conditions of the Mulan PSL v2.
You may obtain a copy of Mulan PSL v2 at:
         http://license.coscl.org.cn/MulanPSL2
THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
See the Mulan PSL v2 for more details. */

//
// Created by Wangyunlai on 2022/5/22.
//

#include "sql/stmt/update_stmt.h"
#include "sql/stmt/filter_stmt.h"
#include "storage/common/db.h"
#include "storage/common/table.h"
#include "common/log/log.h"


UpdateStmt::UpdateStmt(Table *table, const char* attr_name, Value *values, FilterStmt *filter_stmt)
  : table_ (table), attr_name_(attr_name), values_(values), filter_stmt_(filter_stmt)
{}

UpdateStmt::~UpdateStmt()
{
  if(filter_stmt_!=nullptr){
    delete filter_stmt_;
    filter_stmt_ = nullptr;
  }
}


RC UpdateStmt::create(Db *db, const Updates &update_sql, Stmt *&stmt)
{
  if (nullptr == db) {
    LOG_WARN("invalid argument. db is null");
    return RC::INVALID_ARGUMENT;
  }

  const char *table_name = update_sql.relation_name;
  const char *attr_name = update_sql.attribute_name;

  if (nullptr == table_name) {
    LOG_WARN("invalid argument. relation name is null.");
    return RC::INVALID_ARGUMENT;
  }

  if (nullptr == attr_name) {
    LOG_WARN("invalid argument. attribute name is null.");
    return RC::INVALID_ARGUMENT;
  }

  Table *table = db->find_table(table_name);
  if (nullptr == table) {
    LOG_WARN("no such table. db=%s, table_name=%s", db->name(), table_name);
    return RC::SCHEMA_TABLE_NOT_EXIST;
  }

  Value value = update_sql.value;
  const TableMeta &table_meta = table->table_meta();
  const int sys_field_num = table_meta.sys_field_num();
  const int user_field_num = table_meta.field_num() - sys_field_num;
  
  int flag = 0;
  for(int i=0 ; i<user_field_num; i++){
    const FieldMeta *field_meta = table_meta.field(i + sys_field_num);
    const char *field_name = field_meta->name();
    if(0 != strcmp(field_name, attr_name))
      continue;

    const AttrType field_type = field_meta->type();
    const AttrType value_type = value.type;
    if(field_type != value_type){
      LOG_WARN("field type mismatch, field name: %s.", field_meta->name());
      return RC::SCHEMA_FIELD_TYPE_MISMATCH;
    }
    flag = 1;
    break;
  }
  if (!flag){
    LOG_WARN("field %s is not exist.", attr_name);
    return RC::SCHEMA_FIELD_NOT_EXIST;
  }

  std::unordered_map<std::string, Table *> table_map;
  table_map.insert(std::pair<std::string, Table*>(table_name, table));

  FilterStmt* filter_stmt = nullptr;
  RC rc = FilterStmt::create(db, table, &table_map, update_sql.conditions, update_sql.condition_num, filter_stmt);
  if (rc != RC::SUCCESS){
    LOG_WARN("cannot construct filter stmt"); 
    return rc;  
  }

  stmt = new UpdateStmt(table, attr_name, &value, filter_stmt);
  return RC::SUCCESS;
}

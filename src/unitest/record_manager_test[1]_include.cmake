if(EXISTS "/home/zpl/workspace/MiniOB-0xA/src/unitest/record_manager_test[1]_tests.cmake")
  include("/home/zpl/workspace/MiniOB-0xA/src/unitest/record_manager_test[1]_tests.cmake")
else()
  add_test(record_manager_test_NOT_BUILT record_manager_test_NOT_BUILT)
endif()

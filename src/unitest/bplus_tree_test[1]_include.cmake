if(EXISTS "/home/zpl/workspace/MiniOB-0xA/src/unitest/bplus_tree_test[1]_tests.cmake")
  include("/home/zpl/workspace/MiniOB-0xA/src/unitest/bplus_tree_test[1]_tests.cmake")
else()
  add_test(bplus_tree_test_NOT_BUILT bplus_tree_test_NOT_BUILT)
endif()
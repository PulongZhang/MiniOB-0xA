if(EXISTS "/home/zpl/workspace/MiniOB-0xA/src/unitest/md5_test[1]_tests.cmake")
  include("/home/zpl/workspace/MiniOB-0xA/src/unitest/md5_test[1]_tests.cmake")
else()
  add_test(md5_test_NOT_BUILT md5_test_NOT_BUILT)
endif()

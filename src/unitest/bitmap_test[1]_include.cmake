if(EXISTS "/home/zpl/workspace/MiniOB-0xA/src/unitest/bitmap_test[1]_tests.cmake")
  include("/home/zpl/workspace/MiniOB-0xA/src/unitest/bitmap_test[1]_tests.cmake")
else()
  add_test(bitmap_test_NOT_BUILT bitmap_test_NOT_BUILT)
endif()

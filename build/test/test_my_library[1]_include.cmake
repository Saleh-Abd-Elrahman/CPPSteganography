if(EXISTS "/Users/guymazar/C++ Class/CPPSteganography/build/test/test_my_library[1]_tests.cmake")
  include("/Users/guymazar/C++ Class/CPPSteganography/build/test/test_my_library[1]_tests.cmake")
else()
  add_test(test_my_library_NOT_BUILT test_my_library_NOT_BUILT)
endif()
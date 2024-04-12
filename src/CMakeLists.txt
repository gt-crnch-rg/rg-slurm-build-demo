add_library(rg-build-demo rg-build-demo.cpp)
target_include_directories(
  rg-build-demo PUBLIC $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include/>
                       $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

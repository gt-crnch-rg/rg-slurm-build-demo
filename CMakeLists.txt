cmake_minimum_required(VERSION 3.9)

# Set a name and a version number for your project:
project(
  rg-build-demo
  VERSION 0.0.1
  LANGUAGES CXX)

# Initialize some default paths
include(GNUInstallDirs)

# Define the minimum C++ standard that is required
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Compilation options
option(BUILD_DOCS "Enable building of documentation" ON)

# compile the library
add_subdirectory(src)

# compile the application
add_subdirectory(app)

# compile the tests
include(CTest)
if(BUILD_TESTING)
  find_package(Catch2 REQUIRED)
  include(Catch)
  add_subdirectory(tests)
endif()

if(BUILD_DOCS)
  # Add the documentation
  add_subdirectory(doc)
endif()

# Add an alias target for use if this project is included as a subproject in
# another project
add_library(rg-build-demo::rg-build-demo ALIAS rg-build-demo)

# Install targets and configuration
install(
  TARGETS rg-build-demo
  EXPORT rg-build-demo-config
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(
  EXPORT rg-build-demo-config
  NAMESPACE rg-build-demo::
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/rg-build-demo)

install(DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# This prints a summary of found dependencies
include(FeatureSummary)
feature_summary(WHAT ALL)

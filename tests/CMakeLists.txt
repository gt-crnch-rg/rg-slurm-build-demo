add_executable(tests rg-build-demo_t.cpp)
target_link_libraries(tests PUBLIC rg-build-demo Catch2::Catch2WithMain)

# allow user to run tests with `make test` or `ctest`
catch_discover_tests(tests)

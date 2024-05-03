#include "catch2/catch_all.hpp"
#include "rg-build-demo/rg-build-demo.hpp"

using namespace rgbuilddemo;

TEST_CASE("add_one", "[adder]")
{
  REQUIRE(add_one(0) == 1);
  REQUIRE(add_one(123) == 124);
  REQUIRE(add_one(-1) == 0);
}

TEST_CASE("add_two", "[adder]")
{
  REQUIRE(add_two(0) == 2);
  REQUIRE(add_two(123) == 125);
  REQUIRE(add_two(-1) == 1);
}

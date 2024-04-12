#include "catch2/catch.hpp"
#include "rg-build-demo/rg-build-demo.hpp"

using namespace rgbuilddemo;

TEST_CASE("add_one", "[adder]")
{
  REQUIRE(add_one(0) == 1);
  REQUIRE(add_one(123) == 124);
  REQUIRE(add_one(-1) == 0);
}

#include "rg-build-demo/rg-build-demo.hpp"
#include <iostream>

int
main()
{
  int result = rgbuilddemo::add_one(1);
  std::cout << "1 + 1 = " << result << std::endl;
  result = rgbuilddemo::add_two(1);
  std::cout << "1 + 2 = " << result << std::endl;
}

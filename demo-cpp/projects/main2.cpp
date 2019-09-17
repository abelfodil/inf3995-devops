#include "ExampleService.hpp"
#include <optional>

int main() {
  std::optional<int> test_cpp17{1};
  return ExampleService{}.method_to_test();
}
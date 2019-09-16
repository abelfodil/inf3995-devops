#include "ExampleService.hpp"
#include <gtest/gtest.h>

class ExampleServiceTest : public ::testing::Test {
protected:
  void SetUp() override { service = std::make_unique<ExampleService>(); }

  void TearDown() override { service.reset(); }

  std::unique_ptr<ExampleService> service;
};

TEST_F(ExampleServiceTest, sample_method_1) {
  ASSERT_EQ(service->method_to_test(), 0);
}

TEST_F(ExampleServiceTest, sample_method_2) {
  ASSERT_NE(service->method_to_test(), 1);
}

#ifndef LIB_H
#define LIB_H

#include <doctest/doctest.h>
#include <string>

/**
 * @brief A dummy namespace
 * 
 */
namespace Library {
  /**
   * @brief A dummy method
   * 
   * Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. 
   * Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. 
   * Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, 
   * sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
   * 
   * \f[
   * x_i = \frac{a_i}{b_{i+1}}
   * \f]
   * 
   * @image html image.png
   * 
   * @test Test 1: At vero eos et accusam et justo duo dolores
   * @test Test 2: At vero eos et accusam et justo duo dolores
   * 
   * @param str Input string to print
   * 
   * @return true if str is not empty
   * @return false if str is empty
   */
  bool PrintHelloWorld(const std::string& str);
};

TEST_CASE ("Test 1") {
  CHECK(true);
}
TEST_CASE ("Test 2") {
  CHECK(false);
}

#endif

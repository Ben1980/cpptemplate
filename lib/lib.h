#ifndef LIB_H
#define LIB_H

#include <doctest/doctest.h>

namespace Library {
  void PrintHelloWorld();
};

//TEST_SUITE("Library Test Suite") {
    TEST_CASE ("Library test") {
      CHECK(false);
    }
//}

#endif

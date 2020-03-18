#define DOCTEST_CONFIG_IMPLEMENT

#include <doctest/doctest.h>
#include "../lib/lib.h"

int main(int argc, char** argv) {
    doctest::Context context;
    context.applyCommandLine(argc, argv);

    int res = context.run();

    Library::PrintHelloWorld();

    if (context.shouldExit()) {
        return res;
    }
}

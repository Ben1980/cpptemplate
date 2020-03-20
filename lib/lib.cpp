#include "lib.h"
#include <iostream>

bool Library::PrintHelloWorld(const std::string& str)
{
    std::cout << str << '\n';
    return str.empty() ? false : true;
}

#include "myclass.hpp"
#include <string>

namespace std
{
    MyClass::MyClass(string &name, int &id) : name(name), id(id) {};
}
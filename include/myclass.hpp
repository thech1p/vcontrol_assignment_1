#ifndef MYCLASS_HPP
#define MYCLASS_HPP
#include <string>

namespace std
{
    class MyClass
    {
    private:
        string name;
        int id;
    public:
        MyClass(string &pname, int &pid);
        ~MyClass();
    };
}

#endif
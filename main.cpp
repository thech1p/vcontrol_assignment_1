#include <iostream>
#include "myclass.hpp"
//anhar
int main(int argc, char **argv)
{
    //std::cout << "Hello world" << std::endl;
    for (size_t i = 0; i < argc; i++)
    {
        std::cout << argv[i] << std::endl;
    }
    int stackInt = argc;
    std::cout<<"Stack int: "<<stackInt<<std::endl;
    return 0;
}
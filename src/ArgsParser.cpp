#include "ArgsParser.hpp"
#include <iostream>


ArgsParser::ArgsParser(char** begin, char** end)
{
    for(auto& arg = begin; arg != end; arg++)
    {
        this -> args.push_back(std::string(*arg));
    }
}


ArgsParser::~ArgsParser()
{
    this -> args.clear();
    delete this;
}


void ArgsParser::print_args()
{
    for(auto& arg : this -> args)
    {
        std::cout << arg << std::endl;
    }
}


bool ArgsParser::exists(std::string option)
{
    for(auto& arg : this -> args)
    {
        if(option == arg)
        {
            return true;
        }
    }

    return false;
}


std::string ArgsParser::get_option(std::string option)
{
    if(this -> exists(option))
    {
        for(auto& arg : this -> args)
        {
            if(arg == option && arg != *--this -> args.end())
            {
                return *(&arg + 1);
            }
            else if(arg == *--this -> args.end())
            {
                throw std::invalid_argument(option + " is specified incorrectly\n");
            }
        }
    }

    throw std::invalid_argument(option + " does not exist\n");
}
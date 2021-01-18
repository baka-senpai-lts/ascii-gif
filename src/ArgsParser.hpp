#include <string>
#include <vector>

#pragma once


class ArgsParser
{
private:
    std::vector<std::string> args;
public:
    ArgsParser(char**, char**);
    ~ArgsParser();
    void print_args();
    bool exists(std::string);
    std::string get_option(std::string);
};
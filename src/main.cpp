#include <iostream>
#include "ArgsParser.hpp"
#include "Animation.hpp"
#include "Reader.hpp"
#include "SequenceGenerator.hpp"


const char* HELP = "USAGE\n\t"
                   "ascii-gif [options] [file]\n\n"
                   "DESCRIPTION\n\t"
                   "Utility to convert video to ASCII Art sequence\n\n"
                   "OPTIONS\n\t"
                   "-h --help\tShow this\n";

int main(int argc, char* argv[])
{
    ArgsParser parser(argv, argv+argc);

    if(parser.exists("-h") || parser.exists("--help"))
    {
        std::cout << HELP;
    }

    // It crashes everything, so for now I'll take it away
    //delete &parser;

    return 0;
}
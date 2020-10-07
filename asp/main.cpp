#include<iostream>

#include "scanner/scanner.hpp"
#include "parser/parser.hpp"

int main()
{
    std::cout << "Starting... \n";


    Scanner scanner("source.asp");
    scanner.make_tokens();
    Parser parser(scanner);
    parser.parse();
   
    for(const auto& tok : scanner.get_tokens())
    {
        std::cout << tok << "\n";
    }
}
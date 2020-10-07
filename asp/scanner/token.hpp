#pragma once

#include<string>
#include<variant>
#include<variant>


#include "token_types.hpp"

struct Token
{
    const char* token_type;
    std::variant<long, double, std::string, bool> value;


    size_t line_pos;
    size_t row_pos;

    Token(const char* tok, int lp, int rp)
        :token_type(tok),
        line_pos(lp),
        row_pos(rp)
    {}
};


std::ostream& operator<<(std::ostream& out, const Token& tok)
{
    if(tok.token_type == TT_INT){
        out << tok.token_type << ", " << std::get<long>(tok.value);
    }else if(tok.token_type == TT_FLOAT){
        out << tok.token_type << ", " << std::get<double>(tok.value);
    }else{
        out << tok.token_type;        
    }

    return out;
}

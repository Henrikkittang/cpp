#include<iostream>
#include<vector>
#include<string>
#include<ctype.h>


#include"token_types.hpp"
#include"token.hpp"

class Scanner
{
private:
    std::vector<Token> tokens;
    std::string cur_line = "3 + 4 * 2";
    size_t cur_pos = 0;
    char cur_char = '\0';
    
public:

    Scanner(std::string filename="")
    {
        next_char();
    }

    const std::vector<Token>& get_tokens() const 
    {
        return tokens;
    }

    void next_char()
    {
        if(cur_pos < cur_line.length())
            cur_char = cur_line[cur_pos];
        else
            cur_char = '\0';
        cur_pos++;
    }

    void make_tokens()
    {
        tokenize_line();
    }

    void tokenize_line()
    {
        while(cur_char != '\0')
        {
            if(cur_char == ' '){
                next_char();
                continue;
            }

            if(isalpha(cur_char)){
                make_identifier();
            }else if(isdigit(cur_char)){
                make_number();
            }else if(cur_char == TT_PLUS[0]){
                tokens.emplace_back(TT_PLUS, 0, cur_pos);
                next_char();
            }else if(cur_char == TT_MINUS[0]){
                tokens.emplace_back(TT_MINUS, 0, cur_pos);
                next_char();
            }else if(cur_char == TT_MULTIPLY[0]){
                tokens.emplace_back(TT_MULTIPLY, 0, cur_pos);
                next_char();
            }else if(cur_char == TT_DIVIDE[0]){
                tokens.emplace_back(TT_DIVIDE, 0, cur_pos);
                next_char();
            }else if(cur_char == TT_LEFTPARAN[0]){
                tokens.emplace_back(TT_LEFTPARAN, 0, cur_pos);
                next_char();
            }else if(cur_char == TT_RIGHTPARAN[0]){
                tokens.emplace_back(TT_RIGHTPARAN, 0, cur_pos);
                next_char();
            }
        }
    }

    void make_identifier()
    {
        std::string cur_str;
        while(isalpha(cur_char))
        {
            cur_str += cur_char;
            next_char();
        }

        for(const auto& keyword : KEYWORDS)
        {
            if(cur_str == keyword){
                tokens.emplace_back(keyword, 0, cur_pos);
                return;
            }
        }
        tokens.emplace_back(TT_VARIABLE, 0, cur_pos);
        tokens[tokens.size()-1].value = cur_str;
    }

    void make_number()
    {
        std::string cur_num;
        int dot_count = 0;

        while(isdigit(cur_char) || cur_char == '.')
        {
            if(cur_char == '.'){
                dot_count++;
            }

            cur_num += cur_char;
            next_char();
        }

        if(dot_count == 0){
            tokens.emplace_back(TT_INT, 0, cur_pos);
            tokens[tokens.size()-1].value = stol(cur_num);
        }else{
            tokens.emplace_back(TT_FLOAT, 0, cur_pos);
            tokens[tokens.size()-1].value = stod(cur_num);
        }
    }
};





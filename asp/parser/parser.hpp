#pragma once

#include<vector>
#include<any>
#include "../scanner/token_types.hpp"
#include "../scanner/token.hpp"
#include "../scanner/scanner.hpp"
#include "nodes.hpp"


class Parser
{
private:
    std::vector<Token> tokens;
    Token* cur_tok = nullptr;
    size_t tok_idx = 0;
    
    void next_token()
    {
        if(tok_idx < tokens.size()){
            cur_tok = &tokens[tok_idx]; 
        }else{
            cur_tok = nullptr;
        }tok_idx++;
    }

public:

    Parser(const Scanner& scanner)
    {
        tokens = scanner.get_tokens();
        next_token();
    }

    void parse()
    {
        expr();
    }

    std::variant<BinOpNode, NumberNode, UnaryNode> factor()
    {

    }

    BinOpNode term()
    {

    }

    BinOpNode expr()
    {
        BinOpNode left = term();
        while(cur_tok->token_type  == TT_PLUS || cur_tok->token_type  == TT_MINUS){
            Token operation_token = *cur_tok;
            next_token();
            BinOpNode right = term();

            BinOpNode new_node;
            new_node.operation = *cur_tok;
            new_node.left_node = left;
            new_node.right_node = right;
        }

    }

};












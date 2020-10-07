#pragma once

#include<variant>
#include "../scanner/token.hpp"
#include "../scanner/token_types.hpp"


struct NumberNode
{
    std::variant<long, double> value;
};


struct UnaryNode
{
    NumberNode numNode;
    const char* operation;
};

struct BinOpNode
{
    Token operation;
    std::variant<BinOpNode, NumberNode, UnaryNode> left_node;
    std::variant<BinOpNode, NumberNode, UnaryNode> right_node;

    BinOpNode() = default;
};










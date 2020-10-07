#pragma once

#include<string>
#include<array>


const char* TT_PLUS = "+";
const char* TT_MINUS = "-";
const char* TT_MULTIPLY = "*";
const char* TT_DIVIDE = "/";
const char* TT_LEFTPARAN = "(";
const char* TT_RIGHTPARAN = ")";

const char* TT_VARIABLE = "VARIABLE";
const char* TT_INT = "INT";
const char* TT_FLOAT = "FLOAT";


std::array<const char*, 3> KEYWORDS = 
{
    "if",
    "while",
    "for"
};
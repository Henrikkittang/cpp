#include<stdio.h>
#include<iostream>
#include<bitset>

void set_first(unsigned char& a_byte)
{
    a_byte |= 1UL << 0;
}

void toggle(unsigned char& a_byte, int index)
{
    a_byte ^= 1UL << index;
}

bool check(const unsigned char& a_byte, int index)
{
    return (a_byte >> index) & 1U;
}

void set_bit(unsigned char& a_byte, int index, bool state)
{
    a_byte ^= (-state ^ a_byte) & (1UL << index);
}

int main()
{
    unsigned char byte = 0;

    byte = ((byte >> 1) + 5) << 1;
    byte = ((byte >> 1) + 1) << 1;


    std::cout << std::bitset<8>(byte) << '\n';


    printf("%d", byte >> 1);
}
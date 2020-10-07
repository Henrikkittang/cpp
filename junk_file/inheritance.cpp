#include<iostream>
#include<vector>

struct Super
{
    int num = 10;
    void print()
    {
        std::cout << num << "\n";
    }
};

struct Ent1 : public Super
{
    int elsies = 2;
    virtual void print()
    {
        std::cout << elsies << "\n";
    }
};

int main()
{
    
    Ent1 e1;
    // e1.print();

    Super s1;
    s1.print();

}





#include<iostream>


static int q_width = 45;


struct Test{
    int q_width;
    int q_height;

    void print(){
        std::cout << q_width << "\n";
        q_width = 10;
    }
};


int main(){

    Test test;
    test.q_width = 3;
    test.print();
    std::cout << q_width << "\n";
    test.print();
}
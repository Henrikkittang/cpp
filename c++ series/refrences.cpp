#include<iostream>

using namespace std;

void increment(int& value){
    value++;
}

int main(){

    int a = 5;      // declearing variable
    int& ref = a;   // making refrence to the variable
    ref = 2;        // changing variable via refrence
    cout << a << endl;   

    int b = 13;   
    increment(b);   // pasing variable by refrence
    cout << b << endl;
}
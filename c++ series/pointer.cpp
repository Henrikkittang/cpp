#include<iostream>

using namespace std;

void increment(int* value){
    (*value)++; // derefrence and then increment
}

int main(){

    int var = 8;      // declearing value of type int
    int* ptr = &var;  // making a pointer to that variable, also of type int
    *ptr = 10;        // sets the value of the address to 10
    cout << var << endl;

    // int* ptr = int *ptr

    char* buffer = new char[8];   // takes up 8 bits of memory
    memset(buffer, 0, 8);         // fils the 8 bits with data
    char** doublePtr = &buffer;   // makes double pointer to address
    delete[] buffer;              // since it is allocated on the heap, we delete it after usage

    int a = 4;
    increment(&a);

}
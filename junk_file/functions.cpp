#include<iostream>

using namespace std;


int add(int a, int b){
    return a + b;
}

int noe(int a, int b, int func(int, int)){
    return func(a, b) + 10;
}

void nested(void func(int)){
    func(256);
}

int main(){
    int sum = noe(1, 1, add);
    cout << sum << endl;

   
    nested([](int value){
        cout << value << endl;
    });

}





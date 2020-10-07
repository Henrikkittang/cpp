#include<iostream>
#include<string>

template<typename T>
void print(T value){
    std:: cout << value << std::endl;
}

template<typename T, int N>
class Arr{
private:
    T arr[N];
public:
    int getSize() {return N;}
};

int main(){

    Arr<int, 5> arr;
    print<int>(arr.getSize());

    print(3);
    print("Hello");
}



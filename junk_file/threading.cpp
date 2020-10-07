#include<iostream>
#include<thread>
#include<vector>
#include<chrono>


void func1(){
    std::vector<int> arr;
    for(int i = 0; i < 10000000; i++){
        arr.push_back(i);
    }
    std::cout << "Hello \n";
}

int main(){
    
    auto start = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();

    std::thread t1(func1);
    std::thread t2(func1);

    t1.join();
    t2.join();

    auto end = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();

    std::cout << end - start << "\n";
   

}
#include<iostream>
#include<vector>
#include <cmath>
using namespace std;

bool check_prime(int num){
    if(num == 4){
        return false;
    }
    for(int i = 2; i < ceil(num/2) + 1; i++){
        if(num % i == 0){
            return false;
            break;
        }
    }
    return true;
}

vector<int> find_primes(int num){
    vector<int> primes;
    for(int i = 2; i < ceil(num/2) + 1; i++){
        if(check_prime(i)){
            primes.push_back(i);
        }
    }
    return primes;
}

vector<int> factorize(int inp_num){
    int number = inp_num;
    vector<int> primes = find_primes(number);
    vector<int> factors;
    int index = 0;
    while(index < primes.size()){
        if(number % primes[index] == 0){
            factors.push_back(primes[index]);
            number = floor(number / primes[index]);
        }else{
            index += 1;
        }
    }
    return factors;
}


int main(){

    vector<int> factors = factorize(83160);

    return 0;
}
#include<iostream>
#include<vector>
#include <map> 
#include <iterator> 


void removeElem(std::multimap<int, std::vector<int>>& tempMap, std::vector<int>& val){
    std::multimap <int, std::vector<int>> :: iterator myItr =  tempMap.find(val[0] + val[1]);

    while(myItr->second != val){
        myItr++;
    }
    tempMap.erase(myItr);
}

int main(){
    std::multimap<int, std::vector<int>> map;


    std::vector<int> e = {5, 5};
    std::vector<int> a = {6, 6};
    std::vector<int> b = {11, 1};
    std::vector<int> c = {9, 3};
    std::vector<int> d = {5, 7};

    map.insert(std::pair<int, std::vector<int>>(a[0] + a[1], a));
    map.insert(std::pair<int, std::vector<int>>(b[0] + b[1], b));
    map.insert(std::pair<int, std::vector<int>>(c[0] + c[1], c));
    map.insert(std::pair<int, std::vector<int>>(d[0] + d[1], d));
    map.insert(std::pair<int, std::vector<int>>(e[0] + e[1], e));


    //map.erase(12); // removes all elements with key 12
    removeElem(map, a);

    std::multimap <int, std::vector<int>> :: iterator myItr =  map.find(12);
    myItr++;
    myItr++;

    std::cout << myItr->second[0] << ", " << myItr->second[1] << std::endl;
    
    std::multimap <int, std::vector<int>> :: iterator itr; 
    for (itr = map.begin(); itr != map.end(); ++itr) { 
        std::cout <<  "Key: " << itr->first  <<  " ---> " << itr->second[0] << ", " << itr->second[1] << std::endl; 
    } 
}
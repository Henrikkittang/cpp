#include<iostream>
#include<unordered_map>
#include<vector>

struct Test
{
    int ye = 19;
};


struct VectorHasher {
    int operator()(const std::vector<int>& vect) const {
        // Cantor pairing function
        return ((vect[0] + vect[1])*(vect[0] + vect[1] + 1)/2) + vect[1];
    }
};

int main(){
    std::unordered_map<std::vector<int>, Test, VectorHasher> umap;

    Test test;
    umap.insert(std::pair<std::vector<int>, Test>({4, 1}, test));
    umap.insert(std::pair<std::vector<int>, Test>({1, 4}, test));


    if(umap.find({4,1}) != umap.end())
    {
        std::cout << "yies? \n";
    }

    for(const auto& [key, val] : umap)
    {
        std::cout << val.ye << "\n";
    }

}





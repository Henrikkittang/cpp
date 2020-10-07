#include<iostream>
#include<vector>

using namespace std;

class Something{
public:
    int x, y, z;

    Something(int xt, int yt, int zt)
        : x(xt), y(yt), z(zt){
    }

    Something(const Something& something)
        : x(something.x), y(something.y), z(something.z){
        cout << "Copied" << endl;
    }
};

int main(){

    vector<Something> arr;
    arr.reserve(3);
    arr.emplace_back(1, 2, 3);
    arr.emplace_back(4, 5, 6);
    arr.emplace_back(7, 8, 9);


}






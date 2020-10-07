#include<iostream>
#include "complex_containers/linked_arrays.hpp"

struct Entity
{
    int data = 0;

    Entity(int d=0)
        :data(d)
    {
        std::cout << "constructed \n";
    }

    Entity(const Entity& other)
        :data(other.data)
    {
        std::cout << "copied \n";
    }

    ~Entity()
    {
        std::cout << "deleted \n";
    }

};


int main()  
{
    LinkedArray<Entity, 3> arr;
    arr.emplace_back(1);
    arr.emplace_back(2);
    arr.emplace_back(3);
    arr.emplace_back(4);
    arr.emplace_back(5);


    arr.pop_back();
    arr.pop_back();
    arr.pop_back();
    arr.pop_back();
   


    std::cout << "No crash \n";
}  






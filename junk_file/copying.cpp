#include<iostream>
#include<vector>

struct Entity
{
    float x, y, z;

    Entity(float x, float y, float z)
        :x(x), y(y), z(z)
    {}

    Entity(const Entity& entity)
        :x(entity.x), y(entity.y), z(entity.z)
    {

        std::cout << "copied \n";
    }
};


int main(){
    /*std::vector<Entity> enteties;
    enteties.reserve(3);
    enteties.emplace_back(1, 2, 3);
    enteties.emplace_back(4, 5, 6);
    enteties.emplace_back(7, 8, 9);*/

    
}







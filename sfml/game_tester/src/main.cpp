#include <fstream>

#include <jsoncpp.cpp>
#include<SFML/Graphics.hpp>

#include "../world/world.hpp"

int main()
{

    World world;

    world.update();

    /*Json::Value people;
    std::ifstream people_file("src/test.json", std::ifstream::binary);
    people_file >> people;

    std::cout<< people; //This will print the entire json object.

    //The following lines will let you access the indexed objects.
    std::cout<< people["Anna"] << "\n"; //Prints the value for "Anna"
    std::cout<< people["ben"] << "\n"; //Prints the value for "Ben"
    std::cout<< people["Anna"]["profession"] << "\n"; //Prints the value corresponding to "profession" in the json for "Anna"

    std::cout<< people["profession"] << "\n"; //NULL! There is no element with key "profession". Hence a new empty element will be created.
    */
}
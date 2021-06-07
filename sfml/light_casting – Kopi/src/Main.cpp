#include<SFML/Graphics.hpp>

#include "../world/world.hpp"

int main()
{
    int width = 800;
    int height = 800;
    int scl = 20;

    World world = {width, height, scl};
    world.update();

}


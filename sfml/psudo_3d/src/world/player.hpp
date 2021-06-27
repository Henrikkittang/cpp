#pragma once

#include <SFML/Graphics.hpp>

#include "../raycasting/vector2.hpp"
#include "camera.hpp"

struct Player
{
    Camera camera;
    float speed;


    void move(float dt, const DynamicGrid<bool>& grid)
    {
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)){
            camera.angle -= (speed * 0.75f) * dt;
        }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)){
            camera.angle += (speed * 0.75f) * dt;
        }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)){
            camera.pos.x += sinf(camera.angle) * speed * dt;
            camera.pos.y += cosf(camera.angle) * speed * dt;
            if(grid.index((int)camera.pos.x, (int)camera.pos.y) == true || 
                grid.out_of_bounds((int)camera.pos.x, (int)camera.pos.y))
            {
                camera.pos.x -= sinf(camera.angle) * speed * dt;
                camera.pos.y -= cosf(camera.angle) * speed * dt;
            }
        }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)){
            camera.pos.x -= sinf(camera.angle) * speed * dt;
            camera.pos.y -= cosf(camera.angle) * speed * dt;
            if(grid.index((int)camera.pos.x, (int)camera.pos.y) == true || 
                grid.out_of_bounds((int)camera.pos.x, (int)camera.pos.y))
            {
                camera.pos.x += sinf(camera.angle) * speed * dt;
                camera.pos.y += cosf(camera.angle) * speed * dt;
            }
        }
    }
};
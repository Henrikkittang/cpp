#pragma once

#include <SFML/Graphics.hpp>

#include "../raycasting/vector2.hpp"

struct Player
{
    trig::Vector2f position;
    float angle;
    float speed;

    float fov = PI / 3.0f; // Field of view


    void move(float dt, const DynamicGrid<bool>& grid)
    {
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)){
            angle -= (speed * 0.75f) * dt;
        }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)){
            angle += (speed * 0.75f) * dt;
        }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)){
            position.x += sinf(angle) * speed * dt;
            position.y += cosf(angle) * speed * dt;
            if(grid.index((int)position.x, (int)position.y) == true || 
                grid.out_of_bounds((int)position.x, (int)position.y))
            {
                position.x -= sinf(angle) * speed * dt;
                position.y -= cosf(angle) * speed * dt;
            }
        }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)){
            position.x -= sinf(angle) * speed * dt;
            position.y -= cosf(angle) * speed * dt;
            if(grid.index((int)position.x, (int)position.y) == true || 
                grid.out_of_bounds((int)position.x, (int)position.y))
            {
                position.x += sinf(angle) * speed * dt;
                position.y += cosf(angle) * speed * dt;
            }
        }
    }
};
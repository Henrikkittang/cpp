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
            trig::Vector2f vect_angle(camera.angle);
            camera.pos += vect_angle * speed * dt;
            if(grid.index((int)camera.pos.x, (int)camera.pos.y) == true || 
                grid.out_of_bounds((int)camera.pos.x, (int)camera.pos.y))
            {
                camera.pos -= vect_angle * speed * dt;
            }
        }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)){
            trig::Vector2f vect_angle(camera.angle);
            camera.pos -= vect_angle * speed * dt;
            if(grid.index((int)camera.pos.x, (int)camera.pos.y) == true || 
                grid.out_of_bounds((int)camera.pos.x, (int)camera.pos.y))
            {
                camera.pos += vect_angle * speed * dt;
            }
        }
    }
};
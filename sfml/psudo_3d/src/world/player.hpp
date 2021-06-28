#pragma once

#include <SFML/Graphics.hpp>

#include "../raycasting/vector2.hpp"
#include "../raycasting/camera.hpp"

struct Player
{
    Camera camera;
    float speed;

    void move(float dt, const DynamicGrid<bool>& grid)
    {
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A))
            camera.angle -= (speed * 0.75f) * dt;
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D))
            camera.angle += (speed * 0.75f) * dt;

        auto _move = [&](float _angle)
        {
            trig::Vector2f vect_angle(_angle);
            camera.pos += vect_angle * speed * dt;
            if(grid.index((int)camera.pos.x, (int)camera.pos.y) == true || 
                grid.out_of_bounds((int)camera.pos.x, (int)camera.pos.y))
            {
                camera.pos -= vect_angle * speed * dt;
            }
        };

        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W))
            _move(camera.angle); // Move along angle
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S))
            _move(camera.angle + PI);  // Move opposite of angle
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Q))
            _move(camera.angle - (PI / 2.0f)); // Move left
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::E))
            _move(camera.angle + (PI / 2.0f)); // Move right
    }
};
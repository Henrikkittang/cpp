#pragma once

#include "vector2.hpp"

struct Camera
{
    float fov = PI / 4.0f; // Field of view
    float angle = 0.0f;
    trig::Vector2f pos = {0, 0};
    float speed = 5.0f;

    void rotate_left(float dt)
    {
        angle -= (speed * 0.75f) * dt;
    }

    void rotate_right(float dt)
    {
        angle += (speed * 0.75f) * dt;
    }
        
    void move_forward(float dt)
    {
        pos += trig::Vector2f(angle) * speed * dt;
    }   

    void move_backward(float dt)
    {
        pos += trig::Vector2f(angle + PI) * speed * dt;

    }

    void move_left(float dt)
    {
        pos += trig::Vector2f(angle - (PI/2.0f)) * speed * dt;
    }

    void move_right(float dt)
    {
        pos += trig::Vector2f(angle + (PI/2.0f)) * speed * dt;
    }
};
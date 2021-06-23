#pragma once
#include "../raycasting/vector2.hpp"

struct Player
{
    trig::Vector2f position;
    float angle;
    float speed;

    float fov = PI / 4.0f; // Field of view

  
};
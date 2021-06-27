#pragma once

#include "../raycasting/vector2.hpp"

struct Camera
{
    float fov = PI / 4.0f; // Field of view
    float angle = 0.0f;
    trig::Vector2f pos = {0, 0};
};
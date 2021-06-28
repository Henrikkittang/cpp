#pragma once

#include "../raycasting/vector2.hpp"

struct Camera
{
    float fov = PI / 4.0f; // Field of view
    float angle = 0.0f;
    trig::Vector2f pos = {0, 0};
    // float speed = 5.0f;

    /*
    void move_forward(const DynamicGrid<bool>& grid)
    {
        camera.pos.x += sinf(camera.angle) * speed * dt;
        camera.pos.y += cosf(camera.angle) * speed * dt;
        if(grid.index((int)camera.pos.x, (int)camera.pos.y) == true || 
            grid.out_of_bounds((int)camera.pos.x, (int)camera.pos.y))
        {
            camera.pos.x -= sinf(camera.angle) * speed * dt;
            camera.pos.y -= cosf(camera.angle) * speed * dt;
        }
    }

    void move_backward(const DynamicGrid<bool>& grid)
    {
        // trig::Vector2f move_angle(angle);
        camera.pos.x -= sinf(camera.angle) * speed * dt;
        camera.pos.y -= cosf(camera.angle) * speed * dt;
        if(grid.index((int)camera.pos.x, (int)camera.pos.y) == true || 
            grid.out_of_bounds((int)camera.pos.x, (int)camera.pos.y))
        {
            camera.pos.x += sinf(camera.angle) * speed * dt;
            camera.pos.y += cosf(camera.angle) * speed * dt;
        }
    }

    void move_left()
    {

    }


    void look_left()
    {
        camera.angle -= (speed * 0.75f) * dt;
    }

    void look_right()
    {
        camera.angle += (speed * 0.75f) * dt;
    }

    */

};
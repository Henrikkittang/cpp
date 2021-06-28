#pragma once

#include "../world/dynamic_grid.hpp"
#include "vector2.hpp"


// Start position in grid space
float DDA_point(const trig::Vector2f& start_position, float angle, const DynamicGrid<bool>& grid)
{
    // Form ray cast from player into scene
    trig::Vector2f ray_start = start_position;
    trig::Vector2f ray_direction = {sinf(angle), cosf(angle)};
    // trig::Vector2f ray_direction = {1, 0};
    // ray_direction.rotateR(angle);

    trig::Vector2f step_size = { 
        std::abs(1.0f / ray_direction.x),  // fabs?
        std::abs(1.0f / ray_direction.y) // fabs?
    };

    trig::Vector2i map_check = (trig::Vector2i)ray_start;
    trig::Vector2i step;
    trig::Vector2f ray_length;

    // Establish Starting Conditions
    if (ray_direction.x < 0){
        step.x = -1;
        ray_length.x = (ray_start.x - float(map_check.x)) * step_size.x;
    }else{ 
        step.x = 1;
        ray_length.x = (float(map_check.x + 1) - ray_start.x) * step_size.x;
    }

    if (ray_direction.y < 0){
        step.y = -1;
        ray_length.y = (ray_start.y - float(map_check.y)) * step_size.y;
    }else{
        step.y = 1;
        ray_length.y = (float(map_check.y + 1) - ray_start.y) * step_size.y;
    }

    // Perform "Walk" until collision or range check
    bool tile_found = false;
    float max_distance = grid.get_width() * grid.get_height();
    float cur_distance = 0.0f;
    while (!tile_found && cur_distance < max_distance)
    {
        // Walk along shortest path
        if (ray_length.x < ray_length.y){
            map_check.x += step.x;
            cur_distance = ray_length.x;
            ray_length.x += step_size.x;
        }else{
            map_check.y += step.y;
            cur_distance = ray_length.y;
            ray_length.y += step_size.y;
        }

        // Test tile at new test point
        
        if(grid.out_of_bounds(map_check.x, map_check.y))
            // tile_found = true;
            break;
        else
            if( grid.index(map_check.x, map_check.y) == true )
                tile_found = true;
        
    }

    if (tile_found)
    {
        trig::Vector2f intersection = ray_start + ray_direction * cur_distance;
        return intersection;
    }else
    {
        return tig::Vector2f(-1.0f, -1.0f);
    }
}
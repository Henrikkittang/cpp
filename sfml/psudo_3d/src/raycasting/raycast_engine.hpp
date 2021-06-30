#pragma once
#include <SFML/Graphics.hpp>

#include "vector2.hpp"
#include "camera.hpp"

class RaycastEngine
{
protected:
    Camera m_camera; 
    int m_screen_width;
    int m_screen_height;
    float m_render_distance = 20.0f;

    sf::Texture m_wall_texture;

    enum CellSide
    {
        TOP, MIDDLE, BOTTOM
    };

protected:        
    // Returns distance to nearest solid cell using DDA
    // Returns -1.0f if no solid cells where found, 
    // aka ray went outside grid or when exceeding render_distance
    float get_distance(float angle);


    // Returns true if position is outside grid dimensions
    virtual bool out_of_bounds(const trig::Vector2i& position) = 0;

    // Returns true if the cell position is solid
    virtual bool is_solid(const trig::Vector2i& position) = 0;

    // Returns the color of the pixel based on the position, cell side and distance to cell
    virtual sf::Color get_pixel_color(const trig::Vector2i& position, CellSide cell_side, float distance) = 0;


public:

    RaycastEngine(int screen_width, int screen_height)
        : m_screen_width(screen_width), m_screen_height(screen_height)
    {
        m_wall_texture.loadFromFile("src/sprites/wall.jpg");
    }

    // Renders the 2D grid as a 3D perspective, column by column
    void render(sf::RenderWindow& wn);
    
    // Sets camera position
    void set_camera_position(const trig::Vector2f& positon);
    
    // Returns a pointer to the camera
    Camera* get_camera_pointer();
    
    // Returns numbers in range 0 to 1 based on the argument distance 
    // and the render distance
    float get_releative_dept(float distance);

    // Used to shadow ground and sky, which needs to be shadowed based on 
    // the y position   
    float get_releative_breath(float y);

};


float RaycastEngine::get_distance(float angle)
{
    // Form ray cast from player into scene
    trig::Vector2f ray_direction = trig::Vector2f(angle);
    

    trig::Vector2f step_size = { 
        std::abs(1.0f / ray_direction.x),  // fabs?
        std::abs(1.0f / ray_direction.y) // fabs?
    };

    trig::Vector2i map_check = (trig::Vector2i)m_camera.pos;
    trig::Vector2i step;
    trig::Vector2f ray_length;

    // Establish Starting Conditions
    if (ray_direction.x < 0){
        step.x = -1;
        ray_length.x = (m_camera.pos.x - float(map_check.x)) * step_size.x;
    }else{ 
        step.x = 1;
        ray_length.x = (float(map_check.x + 1) - m_camera.pos.x) * step_size.x;
    }

    if (ray_direction.y < 0){
        step.y = -1;
        ray_length.y = (m_camera.pos.y - float(map_check.y)) * step_size.y;
    }else{
        step.y = 1;
        ray_length.y = (float(map_check.y + 1) - m_camera.pos.y) * step_size.y;
    }

    // Perform "Walk" until collision or range check
    bool tile_found = false;
    float cur_distance = 0.0f;
    while (!tile_found && cur_distance < m_render_distance)
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
        
        if( out_of_bounds(map_check) )
            tile_found = true;
        else
            if( is_solid(map_check) )
                tile_found = true;
        
    }

    return cur_distance;
    // return (tile_found ? cur_distance : -1.0f);
}

void RaycastEngine::render(sf::RenderWindow& wn)
{
    sf::Image image;
    image.create(m_screen_width, m_screen_height, sf::Color::Black);
        
    for(int x = 0; x < m_screen_width; x++)
    {
        // Calculating distance with raytracing
        float ray_angle = (m_camera.angle - m_camera.fov / 2.0f) + ((float)x / (float)m_screen_width) * m_camera.fov;
        
        float distance_to_wall = get_distance(ray_angle);

        // Drawing 
        int ceiling = (float)(m_screen_height / 2.0) -m_screen_height / ((float)distance_to_wall);
        int floor = m_screen_height - ceiling;
        float shade = 1 - (distance_to_wall / m_render_distance);
    
        for(int y = 0; y < m_screen_height; y++)
        {
            if(distance_to_wall > m_render_distance) 
                image.setPixel(x, y, sf::Color::Black);

            else if(y < ceiling)
                image.setPixel(x, y, get_pixel_color({x, y}, CellSide::TOP, distance_to_wall));
            else if(y > ceiling && y <= floor && distance_to_wall > 0.0f)
                image.setPixel(x, y, get_pixel_color({x, y}, CellSide::MIDDLE, distance_to_wall));
            else
            {
                image.setPixel(x, y, get_pixel_color({x, y}, CellSide::BOTTOM, distance_to_wall));

                // image.setPixel(x, y, sf::Color::Black);
                // float b = (((float)y - m_screen_height/2.0f) / ((float)m_screen_height / 2.0f));
                // image.setPixel(x, y, sf::Color(255*b, 255*b, 255*b));
            }


            
        }
    }

    sf::Texture texture;
    texture.loadFromImage(image);
    sf::Sprite sprite;
    sprite.setTexture(texture, true);

    wn.draw(sprite);
}


void RaycastEngine::set_camera_position(const trig::Vector2f& positon)
{
    m_camera.pos = positon;
}

// Returns a pointer to the camera
Camera* RaycastEngine::get_camera_pointer()
{
    return &m_camera;
}

float RaycastEngine::get_releative_dept(float distance)
{
    return 1 - distance / m_render_distance;
}
    
float RaycastEngine::get_releative_breath(float y)
{
    return (((float)y - m_screen_height/2.0f) / ((float)m_screen_height / 2.0f));
}

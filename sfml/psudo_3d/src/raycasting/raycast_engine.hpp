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

    sf::Image m_image;
    sf::Texture m_texture;
    sf::Sprite m_sprite;

    enum CellSide
    {
        TOP, MIDDLE, BOTTOM
    };

protected:        
    // Returns distance to nearest solid cell using DDA
    // as the first element and the x sampling value as the second, 
    std::array<float, 2> get_distance(float angle);

    // Returns pixel given relative float coordinates
    sf::Color sample_image(float x, float y, const sf::Image& image);

    // Returns true if position is outside grid dimensions
    virtual bool out_of_bounds(const trig::Vector2i& position) = 0;

    // Returns true if the cell position is solid
    virtual bool is_solid(const trig::Vector2i& position) = 0;

    // Returns the color of the pixel based on the position, cell side and distance to cell
    virtual sf::Color get_pixel_color(const trig::Vector2i& position, CellSide cell_side, float distance, float sample_x, float sample_y) = 0;


public:

    RaycastEngine(int screen_width, int screen_height)
        : m_screen_width(screen_width), m_screen_height(screen_height)
    {
        m_image.create(m_screen_width, m_screen_height, sf::Color::Black);

        m_texture.create(m_screen_width, m_screen_height);
        m_sprite.setTexture(m_texture);
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


std::array<float, 2> RaycastEngine::get_distance(float angle)
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
            {
                tile_found = true;
            }   
    }

    float sample_x = 0.0f;

    if(tile_found)
    {
        trig::Vector2f intersection = m_camera.pos + ray_direction * cur_distance;
        trig::Vector2f cell_mid = ((trig::Vector2f)map_check) + trig::Vector2f(0.5f, 0.5f);

        float test_angle = atan2f((intersection.y - cell_mid.y), (intersection.x - cell_mid.x));

        if (test_angle >= -PI * 0.25f && test_angle < PI * 0.25f)
            sample_x = intersection.y - (float)map_check.y;
        if (test_angle >= PI * 0.25f && test_angle < PI * 0.75f)
            sample_x = intersection.x - (float)map_check.x;
        if (test_angle < -PI * 0.25f && test_angle >= -PI * 0.75f)
            sample_x = intersection.x - (float)map_check.x;
        if (test_angle >= PI * 0.75f || test_angle < -PI * 0.75f)
            sample_x = intersection.y - (float)map_check.y;
    }

    return {cur_distance, sample_x};
    // return (tile_found ? cur_distance : -1.0f);
}

void RaycastEngine::render(sf::RenderWindow& wn)
{    
    m_image.create(m_screen_width, m_screen_height, sf::Color::Black);
    for(int x = 0; x < m_screen_width; x++)
    {
        // Get the angle of the direction for the given x in the field of view
        float ray_angle = (m_camera.angle - m_camera.fov / 2.0f) + ((float)x / (float)m_screen_width) * m_camera.fov;
        

        auto args = get_distance(ray_angle);
        float distance_to_wall = args[0];
        float sample_x = args[1];

        // Drawing 
        int ceiling = (float)(m_screen_height / 2.0) -m_screen_height / ((float)distance_to_wall);
        int floor = m_screen_height - ceiling;
        float shade = 1 - (distance_to_wall / m_render_distance);
    
        for(int y = 0; y < m_screen_height; y ++)
        {
            if(distance_to_wall > m_render_distance)
            { 
                m_image.setPixel(x, y, sf::Color::Black);
                continue;
            }

            float sample_y = ((float)y - (float)ceiling) / ((float)floor - (float)ceiling);
            
            CellSide cell_side;
            if(y < ceiling)
                cell_side = CellSide::TOP;
            else if(y > ceiling && y <= floor && distance_to_wall > 0.0f)
                cell_side = CellSide::MIDDLE;
            else
                cell_side = CellSide::BOTTOM;            

            sf::Color pixel_color = get_pixel_color(m_camera.pos, cell_side, distance_to_wall, sample_x, sample_y);
            m_image.setPixel(x, y, pixel_color);

        }
    }

    m_texture.update(m_image);
    

    wn.draw(m_sprite);
}


sf::Color RaycastEngine::sample_image(float x, float y, const sf::Image& image)
{
    int pixel_x = (int)(image.getSize().x * x);
    int pixel_y = (int)(image.getSize().y * y);

    if(pixel_x >= 0 && pixel_x < image.getSize().x && pixel_y >= 0 && pixel_y < image.getSize().y)
        return image.getPixel(pixel_x, pixel_y);
    else
        return sf::Color::Black;

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

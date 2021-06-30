#pragma once
#include <vector>
#include <cmath>

#include <SFML/Graphics.hpp>

#include "../raycasting/raycast_engine.hpp"
#include "dynamic_grid.hpp"


/*
sf::Image render_world(const Camera& camera, const DynamicGrid<bool>& grid)
{
    
    int screen_width = grid.get_width() * grid.get_scl();
    int screen_height = grid.get_height() * grid.get_scl();

    sf::Image image;
    image.create(screen_width, screen_height, sf::Color::Black);
        
    for(int x = 0; x < screen_width; x++)
    {
        // Calculating distance with raytracing
        float ray_angle = (camera.angle - camera.fov / 2.0f) + ((float)x / (float)screen_width) * camera.fov;
        
        float distance_to_wall = DDA(camera.pos, ray_angle, grid);
        if(distance_to_wall < 0.0f) continue;

        // Drawing 
        int ceiling = (float)(screen_height / 2.0) -screen_height / ((float)distance_to_wall);
        int floor =screen_height - ceiling;
        float max_dist = sqrtf(powf(grid.get_width()-1, 2) + powf(grid.get_height()-1, 2) );
        float shade = 1 - (distance_to_wall / max_dist);
    
        for(int y = 0; y < screen_height; y++)
        {
            if(y < ceiling)
                image.setPixel(x, y, sf::Color::Black);
            else if(y > ceiling && y <= floor && distance_to_wall > 0.0f)
                image.setPixel(x, y, sf::Color(0, 255*shade, 120*shade));
            else
            {
                image.setPixel(x, y, sf::Color::Black);

                // float b = (((float)y -screen_height/2.0f) / ((float)screen_height / 2.0f));
                // image.setPixel(x, y, sf::Color(255*b, 255*b, 255*b));
            }
        }
    }
    return image;
}
*/

class MyWorld : public RaycastEngine
{
private:
    DynamicGrid<bool> m_grid;


public:

    MyWorld(int screen_width, int screen_height, int scl)
        : RaycastEngine(screen_width, screen_height)
    {    
        std::vector<bool> grid = 
        {
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        };
        
    
        m_grid = DynamicGrid<bool>(screen_width/scl, screen_height/scl, scl, grid);
       
        
        std::cout << m_grid.get_width()  << "\n";
        std::cout << m_grid.get_height() << "\n";

        for(int y = 0; y < m_grid.get_height(); y++)
        {
            for(int x = 0; x < m_grid.get_width(); x++)
            {
                if(m_grid.index(x, y))
                    std::cout << " x ";
                else
                    std::cout << " . ";
            }
            std::cout << "\n";
        }
    }

    bool out_of_bounds(const trig::Vector2i& position) override
    {
        return m_grid.out_of_bounds(position.x, position.y);
    }

    bool is_solid(const trig::Vector2i& position) override
    {
        return m_grid.index(position.x, position.y);
    } 


    sf::Color get_pixel_color(const trig::Vector2i& position, CellSide cell_side, float distance) override
    {
        float shade = (1-distance/20.0f);
        if(cell_side == CellSide::TOP ) return sf::Color::Black;
        else if(cell_side == CellSide::MIDDLE ) return sf::Color(0, 255*shade, 120*shade);
        else if(cell_side == CellSide::BOTTOM ) return sf::Color::Black;
        return sf::Color::Black;
    }

};


class World
{
private:
    int m_width, m_height, m_scl;
    sf::RenderWindow m_window;
    MyWorld m_world;
    
private:



public:

    World(int width, int height, int scl)
        : m_width(width), m_height(height), m_scl(scl),
        m_window(sf::VideoMode(width, height), "Psudo 3D", sf::Style::Close | sf::Style::Titlebar),
        m_world(width, height, scl)
    {
        m_world.set_camera_position({4.0f, 4.0f});
    }

    void update()
    {
        sf::Clock delta_clock;
        float dt = 0.0f;
        float acc = 0.0f;
        while(m_window.isOpen()){
            sf::Event evt;
            while(m_window.pollEvent(evt))
                if(evt.type == evt.Closed)
                    m_window.close();
                
            m_window.clear();
            dt = delta_clock.restart().asSeconds();
            acc += dt;
            
            if (acc > 1.0f)
            {
                std::cout << 1.0f / dt << "\n";
                acc = 0.0f;
            }

            Camera* camera = m_world.get_camera_pointer();

            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A))
                camera->rotate_left(dt);
            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D))
                camera->rotate_right(dt);

            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W))
                camera->move_forward(dt);
            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S))
                camera->move_backward(dt);
            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Q))
                camera->move_left(dt);
            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::E))
                camera->move_right(dt);

            m_world.render(m_window);

            
            m_window.display();

        }
    }
};




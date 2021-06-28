#pragma once
#include <vector>
#include <cmath>

#include <SFML/Graphics.hpp>

#include "../raycasting/dda.hpp"
#include "dynamic_grid.hpp"
#include "player.hpp"
#include "camera.hpp"

#define WALL true
#define PASSAGE false


sf::Image render_world(const Camera& camera, const DynamicGrid<bool>& grid)
{
    sf::Image image;
    image.create(grid.get_width()*grid.get_scl(), grid.get_height()*grid.get_scl(), sf::Color::Black);
    
    int screen_width = grid.get_width() * grid.get_scl();
    int screen_height = grid.get_height() * grid.get_scl();


    for(int x = 0; x < screen_width; x++)
    {
        // Calculating distance with raytracing
        float ray_angle = (camera.angle - camera.fov / 2.0f) + ((float)x / (float)screen_width) * camera.fov;
        
        float distance_to_wall = DDA(camera.pos, ray_angle, grid);

        // Drawing 
        int ceiling = (float)(screen_height / 2.0) -screen_height / ((float)distance_to_wall);
        int floor =screen_height - ceiling;
        float max_dist = sqrtf(powf(grid.get_width()-1, 2) + powf(grid.get_height()-1, 2) );
        float shade = 1 - (distance_to_wall / max_dist);
    
        for(int y = 0; y < screen_height; y++)
        {
            if(y < ceiling)
                image.setPixel(x, y, sf::Color::Black);
            else if(y > ceiling && y <= floor)
                image.setPixel(x, y, sf::Color(0, 255*shade, 120*shade));
            else
            {
                image.setPixel(x, y, sf::Color::Black);

                // float b = (((float)y -screescreen_height/2.0f) / ((float)screescreen_height / 2.0f));
                // m_image.setPixel(x, y, sf::Color(255*b, 255*b, 255*b));
            }
        }
    }
    return image;
}


class World
{
private:
    int m_width, m_height, m_scl;
    sf::RenderWindow m_window;
    DynamicGrid<bool> m_grid;
    
    Player m_player;

private:

public:

    World(int width, int height, int scl)
        : m_width(width), m_height(height), m_scl(scl),
        m_window(sf::VideoMode(width, height), "Psudo 3D", sf::Style::Close | sf::Style::Titlebar)
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
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        };
        
        
        
        m_grid = DynamicGrid<bool>(m_width/m_scl, m_height/m_scl, m_scl, grid);
       
        m_player.camera.pos.x = 2.0f;
        m_player.camera.pos.y = 2.0f;
        m_player.speed = 5.0f;

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

            m_player.move(dt, m_grid);

            auto image = render_world(m_player.camera, m_grid);

            sf::Texture texture;
            texture.loadFromImage(image);
            sf::Sprite sprite;
            sprite.setTexture(texture, true);

            m_window.draw(sprite);
            m_window.display();

        }
    }
};




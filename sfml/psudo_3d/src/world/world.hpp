#pragma once
#include <vector>
#include <cmath>

#include <SFML/Graphics.hpp>

#include "../raycasting/dda.hpp"
#include "dynamic_grid.hpp"
#include "player.hpp"

#define WALL true
#define PASSAGE false



class World
{
private:
    int m_width, m_height, m_scl;
    sf::RenderWindow m_window;
    DynamicGrid<bool> m_grid;
    
    Player m_player;
    sf::Image m_image;

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


        m_image.create(width, height, sf::Color::Black);

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

            for(int x = 0; x < m_width; x++)
            {

                // Calculating distance with raytracing
                float ray_angle = (m_player.camera.angle - m_player.camera.fov / 2.0f) + ((float)x / (float)m_width) * m_player.camera.fov;
                
                float distance_to_wall = DDA(m_player.camera.pos, ray_angle, m_grid);

                // Drawing 
                int ceiling = (float)(m_height / 2.0) - m_height / ((float)distance_to_wall);
                int floor = m_height - ceiling;
                float max_dist = sqrtf(powf(m_grid.get_width()-1, 2) + powf(m_grid.get_height()-1, 2) );
                float shade = 1 - (distance_to_wall / max_dist);
            
                for(int y = 0; y < m_height; y++)
                {
                    if(y < ceiling)
                        m_image.setPixel(x, y, sf::Color::Black);
                    else if(y > ceiling && y <= floor)
                        m_image.setPixel(x, y, sf::Color(0, 255*shade, 120*shade));
                    else
                    {
                        m_image.setPixel(x, y, sf::Color::Black);

                        // float b = (((float)y -m_height/2.0f) / ((float)m_height / 2.0f));
                        // m_image.setPixel(x, y, sf::Color(255*b, 255*b, 255*b));
                    }
                }
            }

            sf::Texture texture;
            texture.loadFromImage(m_image);
            sf::Sprite sprite;
            sprite.setTexture(texture, true);

            m_window.draw(sprite);
            m_window.display();

        }
    }
};




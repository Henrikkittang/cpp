#pragma once
#include <vector>
#include <cmath>

#include <SFML/Graphics.hpp>

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
            1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        };
        m_grid = DynamicGrid<bool>(width/scl, height/scl, scl, grid);

        m_player.position.x = 20.0f;
        m_player.position.y = 20.0f;
        m_player.angle = 0.0f;
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
        float dt = 0;
        while(m_window.isOpen()){
            sf::Event evt;
            while(m_window.pollEvent(evt))
                if(evt.type == evt.Closed)
                    m_window.close();
                
            m_window.clear();
            dt = delta_clock.restart().asSeconds();

            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)){
                m_player.angle -= (m_player.speed * 0.75f) * dt;
            }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)){
                m_player.angle += (m_player.speed * 0.75f) * dt;
            }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)){
                m_player.position.x += sinf(m_player.angle) * m_player.speed * dt;
			    m_player.position.y += cosf(m_player.angle) * m_player.speed * dt;
                if(m_grid.index((int)m_player.position.x, (int)m_player.position.y) == WALL || 
                    m_grid.out_of_bounds((int)m_player.position.x, (int)m_player.position.y))
                {
                    m_player.position.x -= sinf(m_player.angle) * m_player.speed * dt;
			        m_player.position.y -= cosf(m_player.angle) * m_player.speed * dt;
                }
            }if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)){
                m_player.position.x -= sinf(m_player.angle) * m_player.speed * dt;
			    m_player.position.y -= cosf(m_player.angle) * m_player.speed * dt;
                if(m_grid.index((int)m_player.position.x, (int)m_player.position.y) == WALL || 
                    m_grid.out_of_bounds((int)m_player.position.x, (int)m_player.position.y))
                {
                    m_player.position.x += sinf(m_player.angle) * m_player.speed * dt;
			        m_player.position.y += cosf(m_player.angle) * m_player.speed * dt;
                }
            }


            for(int x = 0; x < m_width; x++)
            {
                float ray_angle = (m_player.angle - m_player.fov / 2.0f) + ((float)x / (float)m_width) * m_player.fov;
            
                float distance_to_wall = 0.0f;
                float step_size = 0.01f;
                bool hit_wall = false;

                trig::Vector2f player_direction = {sinf(ray_angle), cosf(ray_angle)};

                float max_depth = m_width;
                while(!hit_wall && distance_to_wall < max_depth)
                {
                    distance_to_wall += step_size;

                    trig::Vector2i test = (trig::Vector2i)(m_player.position + player_direction * distance_to_wall); 

                    if(m_grid.out_of_bounds(test.x, test.y))
                    {
                        hit_wall = true;
                        distance_to_wall = max_depth;
                    }else
                    {
                        if(m_grid.index(test.x, test.y) == WALL)
                        {
                            hit_wall = true;
                        }
                    }
                }

                // std::cout << distance_to_wall << "\n";
                int ceiling = (float)(m_height / 2.0) - m_height / ((float)distance_to_wall);
                int floor = m_height - ceiling;

                // std::cout << ceiling << ", " << floor << "\n";

                for(int y = 0; y < m_height; y++)
                {
                    if(y < ceiling)
                        m_image.setPixel(x, y, sf::Color::Black);
                    else if(y > ceiling && y <= floor)
                        m_image.setPixel(x, y, sf::Color(0, 255, 0));
                    else
                        m_image.setPixel(x, y, sf::Color::Black);
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




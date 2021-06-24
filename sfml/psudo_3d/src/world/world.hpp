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
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        };
        m_grid = DynamicGrid<bool>(width/scl, height/scl, scl, grid);

        m_player.position.x = 2.0f;
        m_player.position.y = 2.0f;
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

                // Calculating distance with raytracing
                float ray_angle = (m_player.angle - m_player.fov / 2.0f) + ((float)x / (float)m_width) * m_player.fov;
                float distance_to_wall = 0.0f;
                float step_size = 0.1f;
                bool hit_wall = false;
                bool hit_corner = false;
                trig::Vector2f player_direction = {sinf(ray_angle), cosf(ray_angle)};
                float max_depth = m_width / m_scl;

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

                            std::vector<std::pair<float, float>> corners;
                            for (int tx = 0; tx < 2; tx++)
                            {
                                for (int ty = 0; ty < 2; ty++)
                                {
                                    // Angle of corner to eye
                                    float vy = (float)test.y + ty - m_player.position.y;
                                    float vx = (float)test.x + tx - m_player.position.x;
                                    float distance = sqrt(vx*vx + vy*vy); 
                                    float dot = (player_direction.x * vx / distance) + (player_direction.y * vy / distance);
                                    corners.push_back(std::make_pair(distance, dot));
                                }
                            }
                            std::sort(corners.begin(), corners.end(), [](
                            const std::pair<float, float>& left, const std::pair<float, float>& right) 
                            {
                                return left.first < right.first; 
                            });
						
                            // First two/three are closest (we will never see all four)
                            float angle = 0.005;
                            if (acos(corners.at(0).second) < angle) hit_corner = true;
                            if (acos(corners.at(1).second) < angle) hit_corner = true;
                            // if (acos(corners.at(2).second) < angle) hit_corner = true;
                        }
                    }
                }

                // Drawing 
                int ceiling = (float)(m_height / 2.0) - m_height / ((float)distance_to_wall);
                int floor = m_height - ceiling;
                float shade = 1 - (distance_to_wall / max_depth);

                if(hit_corner)
                    shade = 0;

                for(int y = 0; y < m_height; y++)
                {
                    if(y < ceiling)
                        m_image.setPixel(x, y, sf::Color::Black);
                    else if(y > ceiling && y <= floor)
                        m_image.setPixel(x, y, sf::Color(0, 255*shade, 0));
                    else
                    {
                        float b = (((float)y -m_height/2.0f) / ((float)m_height / 2.0f));
                        m_image.setPixel(x, y, sf::Color(255*b, 255*b, 255*b));
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




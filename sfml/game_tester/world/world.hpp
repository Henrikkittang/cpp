#pragma once
#include <vector>

#include<SFML/Graphics.hpp>


#include "world.hpp"
#include "grid.hpp"
#include "../entity/entity.hpp"
#include "../entity/player.hpp"

#define ChunkSize 16
#define Chunk Grid<int, ChunkSize, ChunkSize>
#define TileSize 48

class World
{
private:

    sf::RenderWindow m_window;
    Player entity;
    

public:

    World(int sreen_width=1024, int scree_height=768, const sf::ContextSettings& settings=sf::ContextSettings())
          : m_window(sf::VideoMode(sreen_width, scree_height), "Game tester", sf::Style::Close | sf::Style::Titlebar, settings)
    {
        entity = Player(sf::Vector2f(100, 100), sf::Vector2f(TileSize, TileSize), "textures/player.png");
    }

    void update()
    {
        sf::Clock delta_clock;
        float dt = 0;
        while(m_window.isOpen()){
            sf::Event evt;
            while(m_window.pollEvent(evt)){
                if(evt.type == evt.Closed){
                    m_window.close();
                }
            }
            m_window.clear();
            dt = delta_clock.restart().asSeconds();

            entity.draw(m_window);
            entity.move(dt);

            m_window.display();
        }
    }

};

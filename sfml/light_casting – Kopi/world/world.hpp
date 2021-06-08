#pragma once
#include <vector>
#include <array>
#include <memory>

#include <SFML/Graphics.hpp>

#include "draw.hpp"
#include "fps.hpp"
#include "../raycasting/structures.hpp"
#include "../raycasting/edges_generator.hpp"
#include "../raycasting/triangles_generator.hpp"


class World
{
private:
    int m_width, m_height, m_scl;    
    std::vector<std::vector<Cell>> m_grid;
	std::vector<std::shared_ptr<Edge>> m_edges;
	std::vector<std::array<float, 3>> m_triangles;

    sf::RenderWindow m_window;

    Draw m_draw;
    FPS fps;
	float lastFPS;
	float currentFPS;

private:
    void update_edges(const sf::Vector2i& mp)
    {
        if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
        {
            if(mp.x >= 0 && mp.x < m_width && mp.y >= 0 && mp.y < m_height)
            {
                int pos[2] = {mp.x / m_scl, mp.y / m_scl};
                m_grid[pos[1]][pos[0]].exists = true;
                m_edges.clear();
                m_edges = EdgesGenerator(m_grid, m_width, m_height, m_scl).make_edges();
            }
            // std::cout << m_edges.size() << "\n";
        }
    }

    void update_triangles(const sf::Vector2i& mp)
    {
        m_triangles.clear();
        if(sf::Mouse::isButtonPressed(sf::Mouse::Right))
        {
            m_triangles = TrianglesGeneration(m_edges, mp).make_triangles();
        }
    }

public:

    World(int width, int height, int scl, const sf::ContextSettings& settings = sf::ContextSettings())
        : m_width(width), m_height(height), m_scl(scl),
          m_grid(std::vector<std::vector<Cell>>(height/scl, std::vector<Cell>(width/scl))),
          m_window(sf::VideoMode(width, height), "Light Casting", sf::Style::Close | sf::Style::Titlebar, settings),
          m_draw(width, height, scl)
    {
        for(size_t i = 1; i < m_grid.size()-1; i++)
            m_grid[i][1].exists = true;
        
        for(size_t i = 1; i < m_grid.size()-1; i++)
            m_grid[i][m_grid.size()-2].exists = true;
        
        for(size_t i = 1; i < m_grid[0].size()-1; i++)
            m_grid[1][i].exists = true;
        
        for(size_t i = 1; i < m_grid[0].size()-1; i++)
            m_grid[m_grid[0].size()-2][i].exists = true;
    }

        
    void update()
    {
        while(m_window.isOpen()){
            sf::Event evt;
            while(m_window.pollEvent(evt)){
                if(evt.type == evt.Closed){
                    m_window.close();
                }
            }
            currentFPS = fps.getFPS();
            if(currentFPS != lastFPS){
                std::cout << currentFPS << "\n";
                lastFPS = currentFPS;
            }
            
            m_window.clear();

            sf::Vector2i mouse_pos = sf::Mouse::getPosition(m_window);

            this->update_edges(mouse_pos);
            this->update_triangles(mouse_pos);

            m_draw.draw_cells(m_window, m_grid);
            m_draw.draw_edges(m_window, m_edges);
            m_draw.draw_triangles(m_window, m_triangles, (sf::Vector2f)mouse_pos);

            m_window.display();

            fps.update();
        }
    }

    
};

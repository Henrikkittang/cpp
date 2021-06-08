#pragma once
#include <vector>
#include <array>
#include <memory>

#include <SFML/Graphics.hpp>

#include "draw.hpp"
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

private:
    void update_edges()
    {
        if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
        {
            sf::Vector2i mouse_pos = sf::Mouse::getPosition(m_window);

            if(mouse_pos.x >= 0 && mouse_pos.x < m_width && mouse_pos.y >= 0 && mouse_pos.y < m_height)
            {
                int pos[2] = {mouse_pos.x / m_scl, mouse_pos.y / m_scl};
                m_grid.at(pos[1]).at(pos[0]).exists = true;
                m_edges.clear();
                m_edges = EdgesGenerator(m_grid, m_width, m_height, m_scl).make_edges();
            }
            std::cout << m_edges.size() << "\n";
        }
    }

    void update_something()
    {
        if(sf::Mouse::isButtonPressed(sf::Mouse::Right))
        {
            sf::Vector2i mp = sf::Mouse::getPosition(m_window);
            m_triangles.clear();
            m_triangles = TrianglesGeneration(m_edges, mp).make_triangles();
            // std::cout << triangles.size() << "\n";

            sf::Vertex center;
            center.position = sf::Vector2f(mp.x, mp.y);
            std::vector<sf::Vertex> triangle_fan = {center};
            triangle_fan.reserve(m_triangles.size());

            for(const auto& data : m_triangles)
            {
                // sf::Vertex vertex(sf::Vector2f(data[0], data[1]));
                // vertex.position = sf::Vector2f(data[0], data[1]);
                triangle_fan.emplace_back(sf::Vector2f(data[0], data[1]));
            }
            sf::Vertex vertex;
            vertex.position = sf::Vector2f(m_triangles[1][0], m_triangles[1][1]);
            triangle_fan.push_back(vertex);
            m_window.draw(&triangle_fan[0], triangle_fan.size(), sf::TriangleFan);

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
            
            m_window.clear();

            this->update_edges();
            this->update_something();

            m_draw.draw_cells(m_window, m_grid);
            m_draw.draw_edges(m_window, m_edges);


            m_window.display();


        }
    }

    
};

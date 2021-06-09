#pragma once
#include "../raycasting/structures.hpp"


class Draw
{
private:
    int m_width, m_height, m_scl;

public:

    Draw(int width, int height, int scl)
        : m_width(width), m_height(height), m_scl(scl)
    {}

    void draw_triangle(float x1, float y1, float x2, float y2, float x3, float y3, sf::RenderWindow& wn)
    {
        sf::Vertex line0[] = {
            sf::Vertex(sf::Vector2f(x1, y1)),
            sf::Vertex(sf::Vector2f(x2, y2)),
        };
        sf::Vertex line1[] = {
            sf::Vertex(sf::Vector2f(x2, y2)),
            sf::Vertex(sf::Vector2f(x3, y3)),
        };
        sf::Vertex line2[] = {
            sf::Vertex(sf::Vector2f(x3, y3)),
            sf::Vertex(sf::Vector2f(x1, y1)),
        };

        wn.draw(line0, 2, sf::Lines);
        wn.draw(line1, 2, sf::Lines);
        wn.draw(line2, 2, sf::Lines);
    }

    void fill_triangle(float x1, float y1, float x2, float y2, float x3, float y3, sf::RenderWindow& wn)
    {
        auto color = sf::Color(255, 255, 255);
        sf::Vertex vertices[] =
        {
            sf::Vertex(sf::Vector2f(x1, y1), color, sf::Vector2f(x2, y2)),
            sf::Vertex(sf::Vector2f(x2, y2), color, sf::Vector2f(x3, y3)),
            sf::Vertex(sf::Vector2f(x3, y3), color, sf::Vector2f(x1, y1))
        };
        wn.draw(vertices, 3, sf::Triangles);
    }

    void draw_triangles(sf::RenderWindow& wn, const std::vector<std::array<float, 3>>& triangles, const sf::Vector2f& center_pos)
    {
        if (triangles.empty()) return;
        
        std::vector<sf::Vertex> triangle_fan = {sf::Vertex(center_pos)};
        triangle_fan.reserve(triangles.size()+2);

        for(const auto& triangle : triangles)
            triangle_fan.emplace_back(sf::Vector2f(triangle[0], triangle[1]));
        triangle_fan.emplace_back(sf::Vector2f(triangles[0][0], triangles[0][1]));
        
        wn.draw(&triangle_fan[0], triangle_fan.size(), sf::TriangleFan);
    }

    void draw_edges(sf::RenderWindow& wn, std::vector<std::shared_ptr<Edge>>& edges)
    {
        std::vector<sf::Vertex> lines;
        lines.reserve(edges.size()*2);


        for(const auto& edge : edges)
        {
            lines.emplace_back(sf::Vector2f(edge->start.x, edge->start.y), sf::Color::Red);
            lines.emplace_back(sf::Vector2f(edge->end.x, edge->end.y), sf::Color::Red);

            int radius = 3;
            int point_count = 5;

            sf::CircleShape circle1(radius, point_count);
            circle1.setFillColor(sf::Color::Cyan);
            circle1.setPosition(sf::Vector2f(edge->start.x, edge->start.y));
            circle1.setOrigin(radius, radius);

            sf::CircleShape circle2(radius, point_count);
            circle2.setFillColor(sf::Color::Cyan);
            circle2.setPosition(sf::Vector2f(edge->end.x, edge->end.y));
            circle2.setOrigin(radius, radius);

            wn.draw(circle1);
            wn.draw(circle2);
        }
        wn.draw(&lines[0], lines.size(), sf::Lines);
    }


    void draw_cells(sf::RenderWindow& wn, const std::vector<std::vector<Cell>>& cells)
    {
        for(int q = 0; q < (m_height/m_scl); q++)
        for(int j = 0; j < (m_width/m_scl); j++){
            if(cells[q][j].exists){
                sf::RectangleShape cell;
                cell.setSize(sf::Vector2f(m_scl, m_scl));
                cell.setFillColor(sf::Color::Blue);
                cell.setPosition(j*m_scl, q*m_scl);
                wn.draw(cell);
            }
        }
    }

};

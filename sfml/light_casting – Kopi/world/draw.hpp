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


    void draw_edges(sf::RenderWindow& wn, std::vector<std::shared_ptr<Edge>>& edges)
    {
        for(const auto& edge : edges)
        {
            sf::Vertex line[2];
            line[0].position = sf::Vector2f(edge->start.x, edge->start.y);
            line[0].color  = sf::Color::Red;
            line[1].position = sf::Vector2f(edge->end.x, edge->end.y);
            line[1].color  = sf::Color::Red;

            sf::CircleShape circle1;
            circle1.setRadius(4);
            circle1.setFillColor(sf::Color::Cyan);
            circle1.setPosition(edge->start.x - 4, edge->start.y - 4);

            sf::CircleShape circle2;
            circle2.setRadius(4);
            circle2.setFillColor(sf::Color::Cyan);
            circle2.setPosition(edge->end.x - 4, edge->end.y - 4);

            wn.draw(line, 2, sf::Lines);
            wn.draw(circle1);
            wn.draw(circle2);
        }
    }


    void draw_cells(sf::RenderWindow& wn, std::vector<std::vector<Cell>>& cells)
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

#pragma once
#include <vector>
#include <array>
#include<iostream>
#include "structures.hpp"

// enum Directions { NORTH, WEST, EAST, SOUTH };

class EdgesGenerator
{
private:
    int m_width, m_height, m_scl;
    std::vector<std::vector<Cell>> m_cells;
	std::vector<std::shared_ptr<Edge>> m_edges;

    
    bool outside_bounds(std::array<int, 2> pos)
    {
        return pos[0] < 0 || pos[0] >= m_cells[0].size() || pos[1] < 0 || pos[1] >= m_cells.size();
    }

    std::vector<Cell*> find_neighbours(std::array<int, 2> pos)
    {
        std::vector<Cell*> neigbours;
        neigbours.reserve(4);
        std::array<std::array<int, 2>, 4> sides =  {{ {0, -1}, {-1, 0}, {1, 0}, {0, 1} }};

        for(auto side : sides){            
            std::array<int, 2> temp = {pos[0] + side[0], pos[1] + side[1]};
            if(!outside_bounds(temp))
                neigbours.push_back(&m_cells[ temp[1] ][ temp[0] ]);
        }
        return neigbours;
    }

public:
    EdgesGenerator(std::vector<std::vector<Cell>>& cells, int width, int height, int scl)
        : m_cells(cells), m_width(width), m_height(height), m_scl(scl)
    {}

        
    std::vector<std::shared_ptr<Edge>> make_edges()
    {   
        m_edges.clear();

        for(int q = 0; q < (m_height/m_scl); q++)
        for(int j = 0; j < (m_width/m_scl); j++){
            Cell* cur_cell = &m_cells[q][j];
            if(cur_cell->exists){
                auto neigbours = find_neighbours({j, q});

                if(neigbours.size() > 3 && !neigbours[3]->exists){
                    if(neigbours[1]->edges_exists[3]){
                        auto side_edge = neigbours[1]->edges_pointer[3];
                        side_edge->end.x += m_scl;
                        cur_cell->edges_pointer[3] = side_edge;
                        cur_cell->edges_exists[3] = true;
                    }else{
                        std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
                        new_edge->start.x = j * m_scl;
                        new_edge->start.y = q * m_scl + m_scl;
                        new_edge->end.x = j * m_scl + m_scl;
                        new_edge->end.y = q * m_scl + m_scl;
                        m_edges.push_back(new_edge);
                        cur_cell->edges_pointer[3] = new_edge;
                        cur_cell->edges_exists[3] = true;
                    }
                }

                if(neigbours.size() > 2 && !neigbours[2]->exists){
                    if(neigbours[0]->edges_exists[2]){
                        auto side_edge = neigbours[0]->edges_pointer[2];
                        side_edge->end.y += m_scl;
                        cur_cell->edges_pointer[2] = side_edge;
                        cur_cell->edges_exists[2] = true;
                    }else{
                        std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
                        new_edge->start.x = j * m_scl + m_scl;
                        new_edge->start.y = q * m_scl;
                        new_edge->end.x = j * m_scl + m_scl;
                        new_edge->end.y = q * m_scl + m_scl;
                        m_edges.push_back(new_edge);
                        cur_cell->edges_pointer[2] = new_edge;
                        cur_cell->edges_exists[2] = true;
                    }
                }

                if(neigbours.size() > 1 && !neigbours[1]->exists){
                    if(neigbours[0]->edges_exists[1]){
                        auto side_edge = neigbours[0]->edges_pointer[1];
                        side_edge->end.y += m_scl;
                        cur_cell->edges_pointer[1] = side_edge;
                        cur_cell->edges_exists[1] = true;
                    }else{
                        std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
                        new_edge->start.x = j * m_scl;
                        new_edge->start.y = q * m_scl;
                        new_edge->end.x = j * m_scl;
                        new_edge->end.y = q * m_scl + m_scl;
                        m_edges.push_back(new_edge);
                        cur_cell->edges_pointer[1] = new_edge;
                        cur_cell->edges_exists[1] = true;
                    }
                }

                if(neigbours.size() > 0 && !neigbours[0]->exists){
                    if(neigbours[1]->edges_exists[0]){
                        auto side_edge = neigbours[1]->edges_pointer[0];
                        side_edge->end.x += m_scl;
                        cur_cell->edges_pointer[0] = side_edge;
                        cur_cell->edges_exists[0] = true;
                    }else{
                        std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
                        new_edge->start.x = j * m_scl;
                        new_edge->start.y = q * m_scl;
                        new_edge->end.x = j * m_scl + m_scl;
                        new_edge->end.y = q * m_scl;
                        m_edges.push_back(new_edge);
                        cur_cell->edges_pointer[0] = new_edge;
                        cur_cell->edges_exists[0] = true;
                    }
                }
            }
        }
        return m_edges;
    }

};

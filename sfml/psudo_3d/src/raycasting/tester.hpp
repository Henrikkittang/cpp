#pragma once
#include <vector>
#include <unordered_set>
#include <array>
#include <memory>

#include "../world/dynamic_grid.hpp"
#include "vector2.hpp"

struct VectorHash 
{
    size_t operator()(const trig::Vector2i& v) const 
    {
        return (v.x + v.y)*(v.x + v.y + 1)/2 + v.y;
    }
};

enum Directions { NORTH, WEST, EAST, SOUTH };


struct Cell
{
    Cell(const trig::Vector2i& p) : position(p) {}

    trig::Vector2i position;
    std::array<bool, 4> neighbours_alive = {false, false, false, false};
};


void merge_cells(const DynamicGrid<bool>& grid)
{
    std::vector<Cell> cells;


    for(int y = 0; y < grid.get_height(); y++)  
    {
        for(int x = 0; x = grid.get_width(); x++)
        {
            if(grid.index(x, y) == true)
            {
                Cell cell = {x, y};
                auto neighbours = grid.get_neighbours(x, y);

                for(int i = 0; i < neighbours.size(); i++)
                {
                    if(grid.index(neighbours[i][0], neighbours[i][1]) == true)
                        cell.neighbours_alive[i] = true;
                }
                cells.push_back(cell);
            }
        }
    }
}

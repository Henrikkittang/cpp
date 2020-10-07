#pragma once

#include<memory>
#include<vector>
#include<stack>
#include<unordered_map>
#include<random>


struct VectorHasher {
    int operator()(const std::vector<int>& vect) const {
        // Cantor pairing function
        return ((vect[0] + vect[1])*(vect[0] + vect[1] + 1)/2) + vect[1];
    }
};

struct Cell
{
	std::vector<int> position;
	bool north, south, east, west = false;
    Cell(int x, int y)
    {
        position = {x, y};
    }
};

struct GridSize
{
    int width, height;
    GridSize(int w, int h){
        width = w;
        height = h;
    }
};

std::vector<std::vector<int>> find_neighbours(
    GridSize& grid_size,
    std::unordered_map<std::vector<int>, std::shared_ptr<Cell>, VectorHasher>& visited,
    std::vector<int>& cur_pos)
{
    std::vector<std::vector<int>> neighbours;
    neighbours.reserve(4);

    for(int i = -1; i < 2; i++){
    for(int j = -1; j < 2; j++){
        if(abs(i) == abs(j)) continue;

        if(i != 0 || j != 0){
            std::vector<int> grid_pos = {cur_pos[0] + j, cur_pos[1] + i};
            if(grid_pos[0] >= 0 && grid_pos[0] < grid_size.width && grid_pos[1] >= 0 && grid_pos[1] < grid_size.height)
            {
                if((visited.find(grid_pos) == visited.end()))
                {
                    neighbours.push_back({j, i});
                }
            }
        }
    }
    }
    return neighbours;
}

template<typename Iter>
Iter select_randomly(Iter start, Iter end) {
    static std::random_device rd;
    static std::mt19937 gen(rd());
    return select_randomly(start, end, gen);
}

std::vector<int> random_element(std::vector<std::vector<int>>& arr)
{
    auto start = arr.begin();
    static std::random_device rd;
    static std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0, std::distance(start, arr.end()) - 1);
    std::advance(start, dis(gen));

    return *start;
}


std::unordered_map<std::vector<int>, std::shared_ptr<Cell>, VectorHasher> generate_maze(int a_width, int a_height, int a_scl)
{
    GridSize grid_size(a_width/a_scl, a_height/a_scl);

    std::shared_ptr<Cell> cur_cell = std::make_shared<Cell>(0, 0);

    std::stack<std::shared_ptr<Cell>> cells;
    std::unordered_map<std::vector<int>, std::shared_ptr<Cell>, VectorHasher> visited;

    cells.push(cur_cell);
    visited.insert( std::pair<std::vector<int>, std::shared_ptr<Cell>>(cur_cell->position, cur_cell));

    while(cells.size() > 0)
    {
        cur_cell = cells.top();
        auto neighbours = find_neighbours(grid_size, visited, cur_cell->position);

        if(neighbours.size() == 0){
            cells.pop();
            continue;
        }
        auto offset = random_element(neighbours);
        auto new_cell = std::make_shared<Cell>(cur_cell->position[0] + offset[0], cur_cell->position[1] + offset[1]);

        cells.push(new_cell);
        visited.insert( std::pair<std::vector<int>, std::shared_ptr<Cell>>(new_cell->position, new_cell));

        if(offset[0] == 0){
            if(offset[1] == -1) {new_cell->north = true;}
            else {new_cell->south = true;}
        }
        if(offset[1] == 0){
            if(offset[0] == -1) {new_cell->west = true;}
            else {new_cell->east = true;}
        }
    }
    return visited;
}





#pragma once
#include<vector>
#include "edges_and_walls.hpp"

std::vector<Cell*> find_children(std::vector<std::vector<Cell>>& tgrid, const std::vector<int>& pos)
{
    std::vector<Cell*> children;
    children.reserve(4);

    for(int i = -1; i < 2; i++){
    for(int j = -1; j < 2; j++){
        if(abs(i) == abs(j)) continue;
        if(i != 0 || j != 0){
            std::vector<int> temp_pos = {pos[0] + j, pos[1] + i};
            if(temp_pos[0] >= 0 && temp_pos[0] < tgrid[0].size() && temp_pos[1] >= 0 && temp_pos[1] < tgrid.size()){
                children.push_back(&tgrid[ temp_pos[1] ][ temp_pos[0] ]);
            }
        }
    }
    }
    return children;
}

std::vector<std::shared_ptr<Edge>> make_edges(std::vector<std::vector<Cell>>& cells)
{
	const int NORTH = 0;
	const int WEST = 1;
	const int EAST = 2;
	const int SOUTH = 3;

	std::vector<std::shared_ptr<Edge>> edges;
	for(int q = 0; q < (height/scl); q++)
	for(int j = 0; j < (width/scl); j++){
		Cell* cur_cell = &cells[q][j];
		if(cur_cell->exists){
			auto neigbours = find_children(cells, {j, q});

			if(neigbours.size() > 3 && !neigbours[3]->exists){
				if(neigbours[1]->edges_exists[3]){
					auto side_edge = neigbours[1]->edges_pointer[3];
					side_edge->end.x += scl;
					cur_cell->edges_pointer[3] = side_edge;
					cur_cell->edges_exists[3] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl;
					new_edge->start.y = q * scl + scl;
					new_edge->end.x = j * scl + scl;
					new_edge->end.y = q * scl + scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[3] = new_edge;
					cur_cell->edges_exists[3] = true;
				}
			}

			if(neigbours.size() > 2 && !neigbours[2]->exists){
				if(neigbours[0]->edges_exists[2]){
					auto side_edge = neigbours[0]->edges_pointer[2];
					side_edge->end.y += scl;
					cur_cell->edges_pointer[2] = side_edge;
					cur_cell->edges_exists[2] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl + scl;
					new_edge->start.y = q * scl;
					new_edge->end.x = j * scl + scl;
					new_edge->end.y = q * scl + scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[2] = new_edge;
					cur_cell->edges_exists[2] = true;
				}
			}

			if(neigbours.size() > 1 && !neigbours[1]->exists){
				if(neigbours[0]->edges_exists[1]){
					auto side_edge = neigbours[0]->edges_pointer[1];
					side_edge->end.y += scl;
					cur_cell->edges_pointer[1] = side_edge;
					cur_cell->edges_exists[1] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl;
					new_edge->start.y = q * scl;
					new_edge->end.x = j * scl;
					new_edge->end.y = q * scl + scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[1] = new_edge;
					cur_cell->edges_exists[1] = true;
				}
			}

			if(neigbours.size() > 0 && !neigbours[0]->exists){
				if(neigbours[1]->edges_exists[0]){
					auto side_edge = neigbours[1]->edges_pointer[0];
					side_edge->end.x += scl;
					cur_cell->edges_pointer[0] = side_edge;
					cur_cell->edges_exists[0] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl;
					new_edge->start.y = q * scl;
					new_edge->end.x = j * scl + scl;
					new_edge->end.y = q * scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[0] = new_edge;
					cur_cell->edges_exists[0] = true;
				}
			}
		}
	}
	return edges;
}


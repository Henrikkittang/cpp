#pragma once
#include<vector>
#include<memory>
#include<cmath>
#include<queue>
#include<unordered_set>
#include<array>

#include<SFML/Graphics.hpp>

class AStar
{

private:


	struct Node{
		std::array<int, 2> position;
		std::shared_ptr<Node> parent=nullptr;
		double h=0, g=0, f=0;

		Node(std::array<int, 2> pos)
			:position(pos) {}

	};


	struct NodeCompare{
		bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const{
			return a->f > b->f;
	}
	};


	struct VectorHash {
		size_t operator()(std::array<int, 2> v) const {
			return (v[0] + v[1])*(v[0] + v[1] + 1)/2 + v[1];
		}
	};


	std::vector<std::array<int, 2>> find_children(const std::vector<std::vector<int>>& grid, std::array<int, 2> pos){
		std::vector<std::array<int, 2>> children;
		children.reserve(8);

		for(int t = -1; t < 2; t++){
			for(int q = -1; q < 2; q++){
				if(abs(t) == abs(q)) continue;

				std::array<int, 2> cur_pos = {pos[0]+q, pos[1]+t};
				if(cur_pos[0] >= 0 && cur_pos[0] < grid[0].size() && cur_pos[1] >= 0 && cur_pos[1] < grid.size())
				{
					if(grid[cur_pos[1]][cur_pos[0]] == 0)
					{
						children.emplace_back(cur_pos);
					}
				}

			}
		}

		return children;
	}


private:

	double heuristic;
	bool pathFound = false;
	std::array<int, 2> start;
	std::array<int, 2> end;

	std::vector<std::vector<int>> grid;
#ifdef SFML_CONFIG_HPP
	std::vector<sf::Vertex> grid_repr;
#endif

	// Container for queue
	std::vector<std::shared_ptr<Node>> queue_container;

	// Makes queue
    std::shared_ptr<Node> cur_node;
    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare> open;

	// Makes open and closed set
    std::unordered_set<std::array<int, 2>, VectorHash> open_set;
    std::unordered_set<std::array<int, 2>, VectorHash> closed_set;

	std::vector<std::array<int, 2>> path;


public:

	AStar(const std::vector<std::vector<int>>& a_grid, std::array<int, 2> a_start, std::array<int, 2> a_end)
	{
		grid = a_grid;
		start = a_start;
		end = a_end;

		heuristic = sqrt(pow(end[0]-start[0], 2) + pow(end[1] - start[1], 2) );

		cur_node = std::make_shared<Node>(start);;

		queue_container.reserve(int(heuristic*1.5));
		closed_set.reserve(int(heuristic*1.5));
		open_set.reserve(int(heuristic*1.5));
		path.reserve(heuristic);

		open = std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare>(NodeCompare(), std::move(queue_container));

		open.push(cur_node);
		open_set.emplace(start);


	}

	void step()
	{
		if(cur_node != nullptr &&  cur_node->position != end && !pathFound){
			if(open_set.empty())
			{
				cur_node = nullptr;
				return;
			}

			cur_node = open.top(); open.pop();
			auto it = open_set.find(cur_node->position);
			open_set.erase(it);

			std::vector<std::array<int, 2>> children = find_children(grid, cur_node->position);
			closed_set.emplace(cur_node->position);

			for(const auto& child_pos : children){
				if(closed_set.find(child_pos) != closed_set.end() || open_set.find(child_pos) != open_set.end()) continue;

				std::shared_ptr<Node> new_node = std::make_shared<Node>(child_pos);
				new_node->g = cur_node->g + 1;
				// new_node->h = sqrt(pow(end[0] - child_pos[0], 2) + pow(end[1] - child_pos[1], 2));
				new_node->h = abs(child_pos[0] - end[0]) + abs(child_pos[1] - end[1]);
				new_node->f = new_node->g + new_node->h;
				new_node->parent = cur_node,

				open.emplace(std::move(new_node));

				open_set.emplace(child_pos);
			}
		}else{
			pathFound = true;
		}
		if(pathFound && cur_node != nullptr)
		{
			path.push_back(cur_node->position);
			cur_node = cur_node->parent;
		}
	}

#ifdef SFML_CONFIG_HPP
	void draw(sf::RenderWindow& wn, size_t scl)
	{
		std::vector<sf::Vertex> quads;
		quads.reserve(open_set.size() + closed_set.size() * path.size());

		if(grid_repr.empty())
		{
			grid_repr.reserve(grid.size()*grid[0].size());
			for(size_t i = 0; i < grid.size(); i++)
			{
				for(size_t j = 0; j < grid[i].size(); j++)
				{
					if(grid[i][j] == 1)
					{
						grid_repr.emplace_back(sf::Vector2f(j * scl, i * scl), sf::Color::Red);
						grid_repr.emplace_back(sf::Vector2f(j * scl+scl, i * scl), sf::Color::Red);
						grid_repr.emplace_back(sf::Vector2f(j * scl+scl, i * scl+scl), sf::Color::Red);
						grid_repr.emplace_back(sf::Vector2f(j * scl, i * scl+scl), sf::Color::Red);
					}
				}
			}
		}

		wn.draw(&grid_repr[0], grid_repr.size(), sf::Quads);
	}
#endif

};


#pragma once
#include<vector>
#include<memory>
#include<cmath>
#include<queue>
#include<unordered_set>
#include<array>
#include <limits>

#include<SFML/Graphics.hpp>

// #include "pathfinding_visualsation.hpp"

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

class AStar
{

private:

    bool outOfBounds(std::array<int, 2> pos)
    {
        return pos[0] < 0 || pos[0] >= m_grid[0].size() || pos[1] < 0 || pos[1] >= m_grid.size();
    }


	std::vector<std::array<int, 2>> find_neighbours(std::array<int, 2> pos){
		std::vector<std::array<int, 2>> neighbors;
		neighbors.reserve(4);
        std::array<std::array<int, 2>, 8> sides =  {{ {0,-1}, {-0, 1}, {-1, 0}, {1,  0} }};

        for(auto p : sides)
        {
            std::array<int, 2> cur_pos = {pos[0]+p[0], pos[1]+p[1]};
			if(!outOfBounds(cur_pos) && m_grid[cur_pos[1]][cur_pos[0]] == 0)
                neighbors.emplace_back(cur_pos);
        }
        return neighbors;
	}


private:

	std::array<int, 2> m_start;
	std::array<int, 2> m_end;
	std::vector<std::vector<int>> m_grid;

	bool m_path_found;

	// Makes queue
    std::shared_ptr<Node> m_cur_node;
    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare> open;

	// Makes open and closed set
    std::unordered_set<std::array<int, 2>, VectorHash> m_open_set;
    std::unordered_set<std::array<int, 2>, VectorHash> m_closed_set;

	std::vector<std::array<int, 2>> m_path;
	std::vector<sf::Vertex> m_grid_repr;

public:

	AStar(const std::vector<std::vector<int>>& grid, std::array<int, 2> start, std::array<int, 2> end)
        : m_grid(grid), m_start(start), m_end(end), m_cur_node(std::make_shared<Node>(start)), m_path_found(false)
    {
		double heuristic = sqrt(pow(m_end[0]-m_start[0], 2) + pow(m_end[1] - m_start[1], 2) );

        std::vector<std::shared_ptr<Node>> queue_container; 
		queue_container.reserve(int(heuristic*1.5));
		open = std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare>(NodeCompare(), std::move(queue_container));
		open.push(m_cur_node);

		m_closed_set.reserve(int(heuristic*1.5));

		m_open_set.reserve(int(heuristic*1.5));
		m_open_set.emplace(m_start);
	}

	void step()
	{
		if(m_cur_node != nullptr &&  m_cur_node->position != m_end && !m_path_found){
            if(m_open_set.empty())
            {
                m_cur_node = nullptr;
                return;
            }

            m_cur_node = open.top(); open.pop();
			auto it = m_open_set.find(m_cur_node->position);
			m_open_set.erase(it);

			std::vector<std::array<int, 2>> neighbors = find_neighbours(m_cur_node->position);
			m_closed_set.emplace(m_cur_node->position);

			for(const auto& neighbors_pos : neighbors){

				if(m_closed_set.find(neighbors_pos) != m_closed_set.end() || m_open_set.find(neighbors_pos) != m_open_set.end()) continue;

				std::shared_ptr<Node> new_node = std::make_shared<Node>(neighbors_pos);
				new_node->g = m_cur_node->g + 1;
				// new_node->h = sqrt(pow(m_end[0] - child_pos[0], 2) + pow(m_end[1] - child_pos[1], 2));
				new_node->h = abs(neighbors_pos[0] - m_end[0]) + abs(neighbors_pos[1] - m_end[1]) ;
                new_node->f = new_node->g + new_node->h;
                new_node->parent = m_cur_node,

				open.emplace(std::move(new_node));
				m_open_set.emplace(neighbors_pos);

			}
		}else{
			m_path_found = true;
		}
		if(m_path_found && m_cur_node != nullptr)
		{
			m_path.push_back(m_cur_node->position);
			m_cur_node = m_cur_node->parent;
		}
	}

    void add_quad(int x, int y, std::vector<sf::Vertex>& quads, const sf::Color& color, size_t scl)
    {
        quads.emplace_back(sf::Vector2f(x * scl    , y * scl    ), color);
        quads.emplace_back(sf::Vector2f(x * scl+scl, y * scl    ), color);
        quads.emplace_back(sf::Vector2f(x * scl+scl, y * scl+scl), color);
        quads.emplace_back(sf::Vector2f(x * scl    , y * scl+scl), color);
    }

	void draw(sf::RenderWindow& wn, size_t scl)
	{
		std::vector<sf::Vertex> quads;
		quads.reserve(m_open_set.size() + m_closed_set.size() + m_path.size());

		if(m_grid_repr.empty())
		{
			m_grid_repr.reserve(m_grid.size()*m_grid[0].size());
			for(size_t i = 0; i < m_grid.size(); i++)
				for(size_t j = 0; j < m_grid[i].size(); j++)
					if(m_grid[i][j] == 1)
                        add_quad(j, i, m_grid_repr, sf::Color::Red, scl);
			
		}

		for(const auto& t : m_open_set)		
            add_quad(t[0], t[1], quads, sf::Color::Green, scl);

		for(const auto& t : m_closed_set)
            add_quad(t[0], t[1], quads, sf::Color::Blue, scl);
		
		for(const auto& t : m_path)
            add_quad(t[0], t[1], quads, sf::Color::Yellow, scl);
		
        add_quad(m_start[0], m_start[1], quads, sf::Color::White, scl);
        add_quad(m_end[0], m_end[1], quads, sf::Color::White, scl);

		wn.draw(&m_grid_repr[0], m_grid_repr.size(), sf::Quads);
		wn.draw(&quads[0], quads.size(), sf::Quads);
	}

};


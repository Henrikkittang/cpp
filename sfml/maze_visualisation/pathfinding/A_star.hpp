#pragma once
#include<vector>
#include<memory>
#include<cmath>
#include<queue>
#include<unordered_set>
#include<array>
#include <limits>

#include<SFML/Graphics.hpp>

#include "pathfinding_visualsation.hpp"

class AStar : public PathfindingVisualsation
{
private:

	// Makes queue
    std::shared_ptr<Node> m_cur_node;
    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare> open;

	// Makes open and closed set
    std::unordered_set<std::array<int, 2>, VectorHash> m_open_set;
    std::unordered_set<std::array<int, 2>, VectorHash> m_closed_set;

	
public:

    AStar(){}

	AStar(const std::vector<std::vector<int>>& grid, std::array<int, 2> start, std::array<int, 2> end)
        : PathfindingVisualsation(grid, start, end)
    {
        m_cur_node = std::make_shared<Node>(start);

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
	void draw(sf::RenderWindow& wn, size_t scl)
	{
		std::vector<sf::Vertex> quads;
		quads.reserve(m_open_set.size() + m_closed_set.size() + m_path.size());

		if(m_grid_repr.empty())
            chache_grid_repr(m_grid_repr, scl);
		
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


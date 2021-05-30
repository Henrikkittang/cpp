#pragma once
#include<vector>
#include<array>
#include<memory>
#include<queue>
#include<unordered_set>

#include<SFML/Graphics.hpp>

#include "pathfinding_visualsation.hpp"


class BFS : public PathfindingVisualsation
{
private:

	
	int rand_range(int start, int end)
	{
		return (std::rand() % (int)(end - start)) + start;
	}

	
private:
    std::queue<std::shared_ptr<Node>> m_open;
    std::unordered_set<std::array<int, 2>, VectorHash> m_visited;

	std::shared_ptr<Node> m_cur_node;
	std::vector<sf::Vertex> grid_repr;

public:

    BFS(){}

	BFS(const std::vector<std::vector<int>>& grid, std::array<int, 2> start, std::array<int, 2> end)
        : PathfindingVisualsation(grid, start, end)
    {
		m_cur_node = std::make_shared<Node>(start);
		m_open.push(m_cur_node);
	}

	void step()
	{
		if(!m_path_found && m_cur_node->position != m_end)
		{
			m_cur_node = m_open.front();
            m_open.pop();
			m_visited.insert(m_cur_node->position);
            
			auto neigbours = find_neighbours(m_cur_node->position);

			for(const auto& neigbours_pos : neigbours)
			{
                if(m_visited.find(neigbours_pos) != m_visited.end())
                    continue;

                auto new_node = std::make_shared<Node>(neigbours_pos);
                new_node->parent = m_cur_node;
                m_open.emplace(std::move(new_node));
                m_visited.emplace(neigbours_pos);
                
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
		quads.reserve(m_open.size() + m_visited.size() + m_path.size());

		if(grid_repr.empty())
            chache_grid_repr(grid_repr, scl);
		
		for(const auto& t : m_visited)
            add_quad(t[0], t[1], quads, sf::Color::Blue, scl);
		
		for(const auto& t : m_path)
            add_quad(t[0], t[1], quads, sf::Color::Yellow, scl);
		
        add_quad(m_start[0], m_start[1], quads, sf::Color::White, scl);
        add_quad(m_end[0], m_end[1], quads, sf::Color::White, scl);

		wn.draw(&grid_repr[0], grid_repr.size(), sf::Quads);
		wn.draw(&quads[0], quads.size(), sf::Quads);
	}
};



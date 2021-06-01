#pragma once
#include<vector>
#include<array>
#include<random>

#include<SFML/Graphics.hpp>

#define WALL 1
#define PASSAGE 0

class MazeVisualsation
{
protected:
	

	std::vector<std::vector<int>> m_map;

protected:

    void connect_nodes(std::array<int, 2> cur_pos, std::array<int, 2> node_pos)
	{
		if(cur_pos[0] > node_pos[0]){
			m_map[cur_pos[1]][cur_pos[0]-1] = PASSAGE;
		}else if(cur_pos[0] < node_pos[0]){
			m_map[cur_pos[1]][cur_pos[0]+1] = PASSAGE;
		}else if(cur_pos[1] > node_pos[1]){
			m_map[cur_pos[1]-1][cur_pos[0]] = PASSAGE;
		}else if(cur_pos[1] < node_pos[1]){
			m_map[cur_pos[1]+1][cur_pos[0]] = PASSAGE;
		}
	}

	std::vector<std::array<int ,2>> find_frontiers(std::array<int, 2> pos, int state)
	{
		std::vector<std::array<int ,2>> frontiers;
		frontiers.reserve(4);

		if(pos[0]-2 >= 0 			&& m_map[pos[1]][pos[0]-2] == state) frontiers.push_back({pos[0]-2, pos[1]  });
		if(pos[0]+2 < m_map[0].size() && m_map[pos[1]][pos[0]+2] == state) frontiers.push_back({pos[0]+2, pos[1]  });
		if(pos[1]-2 >= 0 			&& m_map[pos[1]-2][pos[0]] == state) frontiers.push_back({pos[0]  , pos[1]-2});
		if(pos[1]+2 < m_map.size() 	&& m_map[pos[1]+2][pos[0]] == state) frontiers.push_back({pos[0]  , pos[1]+2});

		return frontiers;
	}


	void init(size_t width, size_t height)
	{
		m_map = std::vector<std::vector<int>>(height, std::vector<int>(width, WALL));
	}

	int rand_range(int start, int end)
	{
		return (std::rand() % (int)(end - start)) + start;
	}

public:

	void draw(sf::RenderWindow& wn, size_t scl)
	{
		std::vector<sf::Vertex> quads;
		quads.reserve(m_map.size() * m_map[0].size());

		for(int i = 0; i < m_map.size(); i++)
		{
			for(int j = 0; j < m_map[i].size(); j++)
			{
				if(m_map[i][j] == WALL)
				{
					quads.emplace_back(sf::Vector2f(j*scl, i*scl), sf::Color::Red);
					quads.emplace_back(sf::Vector2f(j*scl+scl, i*scl), sf::Color::Red);
					quads.emplace_back(sf::Vector2f(j*scl+scl, i*scl+scl), sf::Color::Red);
					quads.emplace_back(sf::Vector2f(j*scl, i*scl+scl), sf::Color::Red);
				}
			}
		}
		wn.draw(&quads[0], quads.size(), sf::Quads);
	}

	virtual void step() = 0;
	virtual std::vector<std::vector<int>> generate_maze(size_t width, size_t height) = 0;

};





#pragma once


#include "maze_visualsation.hpp"


class Prims : public MazeVisualsation
{
private:
	std::vector<std::array<int, 2>> m_frontiers;

private:

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
		std::vector<std::array<int ,2>> m_frontiers;
		m_frontiers.reserve(4);

		if(pos[0]-2 >= 0 			&& m_map[pos[1]][pos[0]-2] == state) m_frontiers.push_back({pos[0]-2, pos[1]  });
		if(pos[0]+2 < m_map[0].size() && m_map[pos[1]][pos[0]+2] == state) m_frontiers.push_back({pos[0]+2, pos[1]  });
		if(pos[1]-2 >= 0 			&& m_map[pos[1]-2][pos[0]] == state) m_frontiers.push_back({pos[0]  , pos[1]-2});
		if(pos[1]+2 < m_map.size() 	&& m_map[pos[1]+2][pos[0]] == state) m_frontiers.push_back({pos[0]  , pos[1]+2});

		return m_frontiers;
	}

public:
	Prims(size_t width, size_t height)
	{
		init(width, height);
		std::array<int, 2> pos = {rand_range(0, width), rand_range(0, height)};
		while (pos[0] % 2 == 0 || pos[1] % 2 == 0)
		{
			pos = {rand_range(0, width), rand_range(0, height)};
		}

		m_frontiers = find_frontiers(pos, WALL);
		m_map[pos[1]][pos[0]] = PASSAGE;
	}

	void step() override
	{
		if(!m_frontiers.empty())
		{
			int frontierIndex = rand_range(0, m_frontiers.size());
			auto frontier = m_frontiers[ frontierIndex ];

			if(m_map[frontier[1]][frontier[0]] == WALL)
			{

				auto newPassageFrontiers = find_frontiers(frontier, PASSAGE);

				if(!newPassageFrontiers.empty())
				{
					m_map[frontier[1]][frontier[0]] = PASSAGE;
					auto newFrontier = newPassageFrontiers[ rand_range(0, newPassageFrontiers.size()) ];
					connect_nodes(frontier, newFrontier);
					m_map[newFrontier[1]][newFrontier[0]] = PASSAGE;
				}

				auto newWallFrontiers = find_frontiers(frontier, WALL);
				m_frontiers.insert(m_frontiers.end(), newWallFrontiers.begin(), newWallFrontiers.end());
			}
			m_frontiers.erase(m_frontiers.begin() + frontierIndex);
		}
	}

	std::vector<std::vector<int>> generate_maze(size_t width, size_t height) override
	{
		init(width, height);

		std::array<int, 2> pos = {rand_range(0, width), rand_range(0, height)};
		m_frontiers = find_frontiers(pos, WALL);
		m_map[pos[1]][pos[0]] = PASSAGE;

		while(!m_frontiers.empty())
			step();
		return m_map;
	}

};

#pragma once
#include<stack>

#include "maze_visualsation.hpp"


class Backtracking : public MazeVisualsation
{
private:
	std::stack<std::array<int, 2>> m_open;

private:

	void connect_nodes(std::array<int, 2> cur_pos, std::array<int, 2> node_pos)
	{
		if(cur_pos[0] > node_pos[0]){
			m_map[cur_pos[1]][cur_pos[0]-1] = 0;
		}else if(cur_pos[0] < node_pos[0]){
			m_map[cur_pos[1]][cur_pos[0]+1] = 0;
		}else if(cur_pos[1] > node_pos[1]){
			m_map[cur_pos[1]-1][cur_pos[0]] = 0;
		}else if(cur_pos[1] < node_pos[1]){
			m_map[cur_pos[1]+1][cur_pos[0]] = 0;
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


public:

	Backtracking(size_t width, size_t height)
	{
		init(width, height);
		std::array<int, 2> pos = {rand_range(0, width), rand_range(0, height)};
		while (pos[0] % 2 == 0 || pos[1] % 2 == 0)
		{
			pos = {rand_range(0, width), rand_range(0, height)};
		}


		m_open.push(pos);
	}

	void step() override
	{
		if (!m_open.empty())
		{
			auto cur_pos = m_open.top();
			m_map[cur_pos[1]][cur_pos[0]] = PASSAGE;

			auto frontiers = find_frontiers(cur_pos, WALL);

			if(!frontiers.empty())
			{
				size_t idx = rand_range(0, frontiers.size());
				auto newFrontier = frontiers[ idx  ];
				connect_nodes(cur_pos, newFrontier);
				m_map[newFrontier[1]][newFrontier[0]] = PASSAGE;
				m_open.push(newFrontier);
			}else{
				m_open.pop();
			}
		}
	}

	std::vector<std::vector<int>> generate_maze(size_t width, size_t height) override
	{
		init(width, height);
		std::array<int, 2> pos = {rand_range(0, width), rand_range(0, height)};
		while(!m_open.empty()) m_open.pop();
		m_open.push(pos);

		while(!m_open.empty())
			step();

		return m_map;
	}

};




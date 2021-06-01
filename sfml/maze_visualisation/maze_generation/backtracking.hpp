#pragma once
#include<stack>

#include "maze_visualsation.hpp"


class Backtracking : public MazeVisualsation
{
private:
	std::stack<std::array<int, 2>> m_open;

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




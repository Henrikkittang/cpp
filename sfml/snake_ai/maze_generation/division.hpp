#pragma once
#include<stack>

#include "maze_visualsation.hpp"

class Division : public MazeVisualsation
{
private:

	std::stack<std::array<int, 4>> m_positions;
	bool vertical_wall = true;


	int valid_rand_range(int min, int max)
	{
		int temp = rand_range(min, max);
		while(temp % 2 != 0)
			temp = rand_range(min, max);
		return temp;
	}

public:

	Division(int width, int height)
	{
		init(width, height);
		std::array<int, 4> pos ={0, 0, width, height};
		m_positions.push(pos);
	}

	void step() override
	{
		if(!m_positions.empty())
		{
			auto pos = m_positions.top();
			m_positions.pop();

			int x = pos[0];
			int y = pos[1];
			int xMax = pos[2];
			int yMax = pos[3];

			if(xMax-x <= 2 || yMax-y <= 2) return;

			if(vertical_wall)
			{
				int rand_col = valid_rand_range(x, xMax);
				// while(m_map[y][rand_col] != PASSAGE && m_map[yMax][rand_col] != PASSAGE)
				// 	rand_col = valid_rand_range(x, xMax);

				for(int i = y; i < yMax; i++)
					m_map[i][rand_col] = PASSAGE;

				int rand_wall = rand_range(y, yMax);
				m_map[rand_wall][rand_col] = WALL;

				m_positions.push({x, y, rand_col, yMax});
				m_positions.push({rand_col, y, xMax, yMax});
			}
			else
			{
				int rand_row = valid_rand_range(y, yMax);
				for(int i = x; i < xMax; i++)
					m_map[rand_row][i] = PASSAGE;
				int rand_wall = rand_range(x, xMax);
				m_map[rand_row][rand_wall] = WALL;

				m_positions.push({x, y, xMax, rand_row});
				m_positions.push({x, rand_row, xMax, yMax});
			}
			vertical_wall = !vertical_wall;
		}
	}

	std::vector<std::vector<int>> generate_maze(size_t width, size_t height) override
	{
		return {};
	}


};
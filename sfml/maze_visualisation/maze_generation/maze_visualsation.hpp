#pragma once
#include<vector>
#include<array>
#include<random>

#include<SFML/Graphics.hpp>

class MazeVisualsation
{
protected:
	#define WALL 1
	#define PASSAGE 0

	std::vector<std::vector<int>> m_map;

protected:

	void init(size_t width, size_t height)
	{
		m_map = std::vector<std::vector<int>>(height, std::vector<int>(width, WALL));
	}

	int rand_range(int start, int end)
	{
		return (std::rand() % (int)(end - start)) + start;
	}

	struct VectorHash {
		size_t operator()(std::array<int, 2> v) const {
			return (v[0] + v[1])*(v[0] + v[1] + 1)/2 + v[1];
		}
	};

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





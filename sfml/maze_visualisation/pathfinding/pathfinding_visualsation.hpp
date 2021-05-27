#pragma once
#include<vector>
#include<memory>
#include<cmath>
#include<queue>
#include<unordered_set>
#include<array>

#include<SFML/Graphics.hpp>

struct Node
    {
		std::array<int, 2> position;
		std::shared_ptr<Node> parent=nullptr;
		double h=0, g=0, f=0;

		Node(std::array<int, 2> pos)
			:position(pos) {}

	};


	struct NodeCompare
    {
		bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const
        {
			return a->f > b->f;
	    }
	};


	struct VectorHash 
    {
		size_t operator()(std::array<int, 2> v) const 
        {
			return (v[0] + v[1])*(v[0] + v[1] + 1)/2 + v[1];
		}
	};

class PathfindingVisualsation
{
public:

    std::array<int, 2> m_start;
	std::array<int, 2> m_end;
	std::vector<std::vector<int>> m_grid;
	bool m_path_found;

    std::vector<std::array<int, 2>> m_path;
	std::vector<sf::Vertex> m_grid_repr;


protected:

    PathfindingVisualsation(const std::vector<std::vector<int>>& grid, std::array<int, 2> start, std::array<int, 2> end)
        : m_grid(grid), 
          m_start(start),
          m_end(end), 
          m_path_found(false)
    {}


    bool outOfBounds(std::array<int, 2> pos)
    {
        return pos[0] >= 0 && pos[0] < m_grid[0].size() && pos[1] >= 0 && pos[1] < m_grid.size();
    }


	std::vector<std::array<int, 2>> find_neighbours(std::array<int, 2> pos)
    {
		std::vector<std::array<int, 2>> neighbors;
		neighbors.reserve(8);

        std::array<std::array<int, 2>, 8> t = 
        {
            {-1,-1}, 
            {-1, 0}, 
            {-1, 1}, 
            {0, -1}, 
            {0,  1}, 
            {1, -1}, 
            {1,  0}, 
            {1,  1}
        };

        for(auto a : t)
			if(!outOfBounds(a) && m_grid[a[1]][a[0]] == 0)
                neighbors.emplace_back(a);
        

		for(int t = -1; t < 2; t++){
			for(int q = -1; q < 2; q++){
				if(abs(t) == abs(q)) continue;

				std::array<int, 2> cur_pos = {pos[0]+q, pos[1]+t};
				if(!outOfBounds(cur_pos) && m_grid[cur_pos[1]][cur_pos[0]] == 0)
                    neighbors.emplace_back(cur_pos);
			}
		}
		return neighbors;
	}

    void add_quad(int x, int y, std::vector<sf::Vertex>& quads, const sf::Color& color, size_t scl)
    {
        quads.emplace_back(sf::Vector2f(x * scl    , y * scl    ), color);
        quads.emplace_back(sf::Vector2f(x * scl+scl, y * scl    ), color);
        quads.emplace_back(sf::Vector2f(x * scl+scl, y * scl+scl), color);
        quads.emplace_back(sf::Vector2f(x * scl    , y * scl+scl), color);
    }

	void chache_grid_repr(std::vector<sf::Vertex>& quads, size_t scl)
	{
        quads.reserve(m_grid.size()*m_grid[0].size());
        for(size_t i = 0; i < m_grid.size(); i++)
            for(size_t j = 0; j < m_grid[i].size(); j++)
                if(m_grid[i][j] == 1)
                    add_quad(j, i, quads, sf::Color::Red, scl);	
	}
};


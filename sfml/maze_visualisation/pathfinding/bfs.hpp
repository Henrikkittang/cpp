#pragma once
#include<vector>
#include<array>
#include<memory>
#include<queue>
#include<unordered_set>

#include<SFML/Graphics.hpp>

class BFS
{
private:

	struct Node{
		std::array<int, 2> position;
		std::shared_ptr<Node> parent=nullptr;
		double h=0, g=0, f=0;

		Node(std::array<int, 2> pos)
			:position(pos) {}

	};

	struct VectorHash {
		size_t operator()(std::array<int, 2> v) const {
			return (v[0] + v[1])*(v[0] + v[1] + 1)/2 + v[1];
		}
	};

	int rand_range(int start, int end)
	{
		return (std::rand() % (int)(end - start)) + start;
	}

	std::vector<std::array<int, 2>> find_children(std::array<int, 2> pos){
		std::vector<std::array<int, 2>> children;
		children.reserve(4);

		for(int t = -1; t < 2; t++){
			for(int q = -1; q < 2; q++){
				if(abs(t) == abs(q)) continue;

				std::array<int, 2> cur_pos = {pos[0]+q, pos[1]+t};
				if(cur_pos[0] >= 0 && cur_pos[0] < grid[0].size() && cur_pos[1] >= 0 && cur_pos[1] < grid.size())
				{
					if(grid[cur_pos[1]][cur_pos[0]] == 0 && m_closed.find(cur_pos) == m_closed.end())
					{
						children.emplace_back(cur_pos);
					}
				}

			}
		}

		return children;
	}
private:
	bool pathFound;
	std::array<int, 2> start;
	std::array<int, 2> end;

	std::vector<std::vector<int>> grid;
	std::vector<std::array<int, 2>> path;
    std::queue<std::shared_ptr<Node>> m_open;
    std::unordered_set<std::array<int, 2>, VectorHash> m_closed;

	std::shared_ptr<Node> cur_node;


#ifdef SFML_CONFIG_HPP
	std::vector<sf::Vertex> grid_repr;
#endif


public:

	BFS(const std::vector<std::vector<int>>& a_grid, std::array<int, 2> a_start, std::array<int, 2> a_end)
	{
		grid = a_grid;
		start = a_start;
		end = a_end;

		pathFound = false;

		cur_node = std::make_shared<Node>(start);
		m_open.push(cur_node);
	}

	void step()
	{
		if(!pathFound && cur_node->position != end)
		{
			cur_node = m_open.front();
			auto children = find_children(cur_node->position);
			m_closed.insert(cur_node->position);

			if(children.empty())
				m_open.pop();

			for(const auto& child_pos : children)
			{
				auto new_node = std::make_shared<Node>(child_pos);
				new_node->parent = cur_node;
				m_open.emplace(std::move(new_node));
			}

		}else{
			pathFound = true;
		}

		if(pathFound && cur_node != nullptr)
		{
			path.push_back(cur_node->position);
			cur_node = cur_node->parent;
		}
	}

	void draw(sf::RenderWindow& wn, size_t scl)
	{
		std::vector<sf::Vertex> quads;
		quads.reserve(m_open.size() + m_closed.size() + path.size());

		if(grid_repr.empty())
		{
			grid_repr.reserve(grid.size()*grid[0].size());
			for(size_t i = 0; i < grid.size(); i++)
			{
				for(size_t j = 0; j < grid[i].size(); j++)
				{
					if(grid[i][j] == 1)
					{
						grid_repr.emplace_back(sf::Vector2f(j * scl, i * scl), sf::Color::Red);
						grid_repr.emplace_back(sf::Vector2f(j * scl+scl, i * scl), sf::Color::Red);
						grid_repr.emplace_back(sf::Vector2f(j * scl+scl, i * scl+scl), sf::Color::Red);
						grid_repr.emplace_back(sf::Vector2f(j * scl, i * scl+scl), sf::Color::Red);
					}
				}
			}
		}

		for(const auto& t : m_closed)
		{
			quads.emplace_back(sf::Vector2f(t[0] * scl, t[1] * scl), sf::Color::Blue);
			quads.emplace_back(sf::Vector2f(t[0] * scl+scl, t[1]  * scl), sf::Color::Blue);
			quads.emplace_back(sf::Vector2f(t[0] * scl+scl, t[1] * scl+scl), sf::Color::Blue);
			quads.emplace_back(sf::Vector2f(t[0] * scl, t[1] * scl+scl), sf::Color::Blue);
		}

		for(const auto& t : path)
		{
			quads.emplace_back(sf::Vector2f(t[0] * scl, t[1] * scl), sf::Color::Yellow);
			quads.emplace_back(sf::Vector2f(t[0] * scl+scl, t[1]  * scl), sf::Color::Yellow);
			quads.emplace_back(sf::Vector2f(t[0] * scl+scl, t[1] * scl+scl), sf::Color::Yellow);
			quads.emplace_back(sf::Vector2f(t[0] * scl, t[1] * scl+scl), sf::Color::Yellow);
		}

		wn.draw(&grid_repr[0], grid_repr.size(), sf::Quads);
		wn.draw(&quads[0], quads.size(), sf::Quads);
	}
};



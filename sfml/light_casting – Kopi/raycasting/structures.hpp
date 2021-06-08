#pragma once
#include<memory>

#include<SFML/Graphics.hpp>


struct Edge
{
	sf::Vector2f start;
	sf::Vector2f end;
};

struct Cell
{
	bool exists;
    std::array<bool, 4> edges_exists;
	std::array<std::shared_ptr<Edge>, 4> edges_pointer{};
};

struct Triangle 
{
    std::array<int, 2> p1;
    std::array<int, 2> p2;
    std::array<int, 2> p3;
};



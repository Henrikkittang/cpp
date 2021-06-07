#pragma once
#include<memory>

#include<SFML/Graphics.hpp>


struct Edge{
	sf::Vector2f start;
	sf::Vector2f end;
};

struct Cell{
	bool exists;
	bool edges_exists[4];
	std::shared_ptr<Edge> edges_pointer[4] = {std::make_shared<Edge>(), std::make_shared<Edge>(), std::make_shared<Edge>(), std::make_shared<Edge>()};

};
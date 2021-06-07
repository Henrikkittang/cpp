#include<iostream>
#include<memory>
#include<cmath>
#include<vector>
#include<algorithm>

#include<SFML/Graphics.hpp>

const int width = 800;
const int height = 800;
const int scl = 20;


#include "vector2.hpp"
#include "fps.hpp"
#include "drawing.hpp"
#include "make_edges.hpp"
#include "edges_and_walls.hpp"
#include "make_triangles.hpp"

/*
NOTES FOR OPTIMIZATION

- use a map with angle as key to store triangle points
- Use triangle fan to draw istead of multiple triangles (?)

*/


int main()
{
	sf::ContextSettings settings;
	settings.antialiasingLevel = 8;
	sf::RenderWindow window(sf::VideoMode(width, height), "Light Casting", sf::Style::Close | sf::Style::Titlebar, settings);
	std::vector<std::vector<Cell>> grid = std::vector<std::vector<Cell>>(height/scl, std::vector<Cell>(width/scl));
	std::vector<std::shared_ptr<Edge>> edges;
	std::vector<std::vector<float>> triangles;

	for(size_t i = 1; i < grid.size()-1; i++)
	{
		grid[i][1].exists = true;
	}
	for(size_t i = 1; i < grid.size()-1; i++)
	{
		grid[i][grid.size()-2].exists = true;
	}

	for(size_t i = 1; i < grid[0].size()-1; i++)
	{
		grid[1][i].exists = true;
	}
	for(size_t i = 1; i < grid[0].size()-1; i++)
	{
		grid[grid[0].size()-2][i].exists = true;
	}

	FPS fps;
	float lastFPS;
	float currentFPS;

	// window.setFramerateLimit(10);

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}
		currentFPS = fps.getFPS();
		if(currentFPS != lastFPS){
			std::cout << currentFPS << "\n";
			lastFPS = currentFPS;
		}

		window.clear();

		if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
		{
			sf::Vector2i mouse_pos = sf::Mouse::getPosition(window);

			if(mouse_pos.x >= 0 && mouse_pos.x < width && mouse_pos.y >= 0 && mouse_pos.y < height)
			{
				int pos[2] = {mouse_pos.x / scl, mouse_pos.y / scl};
				grid.at(pos[1]).at(pos[0]).exists = true;
				edges.clear();
				edges = make_edges(grid);
			}
			// std::cout << edges.size() << "\n";
		}

		if(sf::Mouse::isButtonPressed(sf::Mouse::Right))
		{
			sf::Vector2i mp = sf::Mouse::getPosition(window);
			triangles.clear();
			triangles = make_triangles(edges, mp);
			// std::cout << triangles.size() << "\n";

			sf::Vertex center;
			center.position = sf::Vector2f(mp.x, mp.y);
			std::vector<sf::Vertex> triangle_fan = {center};
			triangle_fan.reserve(triangles.size());

			for(const auto& data : triangles)
			{
				// sf::Vertex vertex(sf::Vector2f(data[0], data[1]));
				// vertex.position = sf::Vector2f(data[0], data[1]);
				triangle_fan.emplace_back(sf::Vector2f(data[0], data[1]));
			}
			sf::Vertex vertex;
			vertex.position = sf::Vector2f(triangles[1][0], triangles[1][1]);
			triangle_fan.push_back(vertex);
			window.draw(&triangle_fan[0], triangle_fan.size(), sf::TriangleFan);

		}

		draw_cells(window, grid);
		draw_edges(window, edges);


		window.display();

		fps.update();

	}
}


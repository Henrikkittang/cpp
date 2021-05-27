#include<iostream>
#include<vector>

#include<SFML/Graphics.hpp>

const int width = 800;
const int height = 800;
const int scl = 10;

#include "../maze_generation/prims.hpp"
#include "../maze_generation/backtracking.hpp"
#include "../maze_generation/division.hpp"
#include "../pathfinding/A_star.hpp"
#include "../pathfinding/bfs.hpp"


int main(){
	sf::RenderWindow window(sf::VideoMode(width, height), "aMAZEing", sf::Style::Close | sf::Style::Titlebar);
	// window.setFramerateLimit(60);

	int grid_w  = width / scl;
	int grid_h = height / scl;

	Backtracking maze_generation(grid_w, grid_h);
	auto maze = maze_generation.generate_maze(grid_w, grid_h);
	AStar pathfinding(maze, {1, 1}, {grid_w-2, grid_h-2});

	srand((int)time(0));

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();

		pathfinding.step();
		pathfinding.draw(window, scl);

		window.display();

	}
}


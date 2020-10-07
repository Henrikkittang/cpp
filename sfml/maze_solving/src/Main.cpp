#include<iostream>
#include<random>
#include<vector>

#include<SFML/Graphics.hpp>

#include "maze_generation.hpp"
#include "pathfinding.hpp"


const int width = 800;
const int height = 800;
const int scl = 10;


void downscale(std::vector<std::vector<int>>& grid, std::vector<std::shared_ptr<Cell>> visited)
{
    for(auto& cell : visited) {
        std::vector<int> pos = {cell->position[0]*3 + 1, cell->position[1]*3 + 1};

        try{
            if(cell->north){
                for(int i = 0; i < -3; i--){
                    grid.at(pos[1]).at(pos[0] + i) = 1;
                }
            }if(cell->south){
                for(int i = 0; i < 3; i++){
                    grid.at(pos[1]).at(pos[0] + i) = 1;
                }
            }if(cell->east){
                for(int i = 0; i < 3; i++){
                    grid.at(pos[1] + i).at(pos[0]) = 1;
                }
            }if(cell->west){
                for(int i = 0; i < -3; i--){
                    grid.at(pos[1] + i).at(pos[0]) = 1;
                }
            }
        }catch(const std::out_of_range& oor)
        {
            continue;
        }
    }
}

void draw_grid(sf::RenderWindow& wn, std::vector<std::vector<int>>& grid){
	for(int i = 0; i < grid.size(); i++){
		for(int j = 0; j < grid[i].size(); j++){
			int state = grid[i][j];

			if(state){
				sf::RectangleShape cell;
				cell.setSize(sf::Vector2f(scl, scl));
				cell.setFillColor(sf::Color::Red);
				cell.setPosition(j*scl, i*scl);

				wn.draw(cell);
			}
		}
	}
}

void draw_path(sf::RenderWindow& wn, std::vector<std::vector<int>>& path){
	for(auto& pos : path){
		sf::RectangleShape cell;
		cell.setSize(sf::Vector2f(scl, scl));
		cell.setFillColor(sf::Color::Blue);
		cell.setPosition(pos[0]*scl, pos[1]*scl);

		wn.draw(cell);
	}
}

int main(){

	sf::RenderWindow window(sf::VideoMode(width, height), "Test", sf::Style::Close | sf::Style::Titlebar);
	window.setFramerateLimit(10);

	srand((int)time(0));

	std::vector<std::vector<int>> grid((height/scl), std::vector<int>((width/scl)));
	std::vector<int> start = {2, 2};
	std::vector<int> end = {(width/scl) - 2, (height/scl) - 2};
	//populateGrid(grid);
	auto visited = generate_maze(width/3, height/3, scl);
	downscale(grid, visited);
	auto path = find_path(grid, start, end);

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();

		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)){
			std::vector<std::vector<int>> temp_grid((height/scl), std::vector<int>((width/scl)));
			grid = temp_grid;
			visited = generate_maze(width, height, scl);
			downscale(grid, visited);
			path = find_path(grid, start, end);
		}

		draw_path(window, path);
		draw_grid(window, grid);

		window.display();
	}
}


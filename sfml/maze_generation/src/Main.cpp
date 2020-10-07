#include<iostream>
#include<vector>

#include<SFML/Graphics.hpp>

#include "temp.hpp"

const int width = 600;
const int height = 600;
const int scl = 40;


std::vector<sf::RectangleShape> makeLines(std::unordered_map<std::vector<int>, std::shared_ptr<Cell>, VectorHasher>& cells)
{
	std::vector<sf::RectangleShape> lines;
	lines.reserve(cells.size());
	for(const auto& [pos, cell] : cells)
	{
		sf::RectangleShape line;
		line.setFillColor(sf::Color::Red);
		int temp_pos[] = {pos[0] * scl + scl, pos[1] * scl, + scl};
		if(cell->north){
			line.setSize(sf::Vector2f(1, -scl));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}if(cell->east){
			line.setSize(sf::Vector2f(scl, 1));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}if(cell->south){
			line.setSize(sf::Vector2f(1, scl));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}if(cell->west){
			line.setSize(sf::Vector2f(-scl, 1));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}
		lines.push_back(line);
	}
	return lines;
}


/*
std::vector<sf::RectangleShape> makeLines(std::map<std::vector<int>, std::shared_ptr<Cell>>& cells)
{
	std::vector<sf::RectangleShape> lines;
	lines.reserve(cells.size());
	for(const auto& [pos, cell] : cells)
	{
		sf::RectangleShape line;
		line.setFillColor(sf::Color::Red);
		int temp_pos[] = {pos[0] * scl + scl, pos[1] * scl, + scl};
		if(cell->north){
			line.setSize(sf::Vector2f(1, -scl));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}if(cell->east){
			line.setSize(sf::Vector2f(scl, 1));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}if(cell->south){
			line.setSize(sf::Vector2f(1, scl));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}if(cell->west){
			line.setSize(sf::Vector2f(-scl, 1));
			line.setPosition(temp_pos[0], temp_pos[1]);
		}
		lines.push_back(line);
	}
	return lines;
}
*/

int main(){

	auto cells = generate_maze(width, height, scl);
	auto lines = makeLines(cells);

	sf::RenderWindow window(sf::VideoMode(width, height), "aMAZEing", sf::Style::Close | sf::Style::Titlebar);
	window.setFramerateLimit(10);

	srand((int)time(0));  // uses the time as seed for the radom number generator

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();

		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W))
		{
			cells = generate_maze(width, height, scl);
			lines = makeLines(cells);
		}

		for(auto& line : lines)
		{
			window.draw(line);
		}

		window.display();

	}
}


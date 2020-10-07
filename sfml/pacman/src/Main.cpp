#include<iostream>
#include<vector>
#include<string>

#include<SFML/Graphics.hpp>

const int width = 960;
const int height = 960;
const int scl = 24;

#include "serialization.hpp"

class TileMap : public sf::Drawable
{
private:
	std::vector<sf::RectangleShape> walls;

	virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const
	{
		for(auto& wall : walls)
		{
			target.draw(wall);
		}
	}

public:
	std::vector<std::vector<int>> map_data;
	std::vector<std::vector<int>> map_grid;

	TileMap(std::string filename)
	{
		map_data = read_map_from_file(filename);
		map_grid = std::vector<std::vector<int>>(height/scl, std::vector<int>(width/scl, 0));

		for(auto& tile : map_data)
		{
			map_grid[tile[1]][tile[0]] = tile[2];

			sf::RectangleShape wall;
			wall.setSize(sf::Vector2f(scl, scl));
			wall.setFillColor(sf::Color::Red);
			wall.setPosition(tile[0] * scl, tile[1] * scl);

			walls.push_back(wall);
		}
	}
};

class Pacman : public sf::Drawable
{
private:
	int m_width = scl - 5;
	sf::RectangleShape player;
	float xDir = 0.0f;
	float yDir = 0.0f;

	virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const
	{
		target.draw(player);
	}

public:
	float pace = 0;

	Pacman(float start_x, float start_y)
	{
		player.setSize(sf::Vector2f(m_width, m_width));
		player.setFillColor(sf::Color::Yellow);
		player.setPosition(start_x * scl + 1, start_y * scl + 1);
	}

	std::vector<int> get_grid_pos()
	{
		sf::Vector2f pos = player.getPosition();
		return std::vector<int>((int)(pos.x) / scl, (int)(pos.y) / scl);
	}

	void collision(TileMap& map, float pace)
	{
		sf::Vector2f pos = player.getPosition();

		std::vector<int> TopLeft = {(int)(pos.x) / scl, (int)(pos.y) / scl};
		std::vector<int> TopRight = {(int)(pos.x + m_width) / scl, (int)(pos.y) / scl};
		std::vector<int> BottomLeft = {(int)(pos.x) / scl, (int)(pos.y + m_width) / scl};
		std::vector<int> BottomRight = {(int)(pos.x + m_width) / scl, (int)(pos.y + m_width) / scl};

		std::vector<std::vector<int>> cornes = {TopLeft, TopRight, BottomLeft, BottomRight};

		for(const auto& corner : cornes)
		{
			int tile = map.map_grid[corner[1]][corner[0]];
			if(tile == 1)
			{
				player.move(-xDir * 0.5  * (120/pace), -yDir * 0.5 * (120/pace));
				xDir = 0;
				yDir = 0;
			}
		}
	}

	void move(TileMap& map, float pace)
	{
		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W) && yDir != 1){
			xDir = 0;
			yDir = -1;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S) && yDir != -1){
			xDir = 0;
			yDir = 1;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A) && xDir != 1){
			xDir = -1;
			yDir = 0;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D) && xDir != -1){
			xDir = 1;
			yDir = 0;
		}

		collision(map, pace);
		player.move(xDir * 0.5  * (120/pace), yDir * 0.5 * (120/pace));
	}
};

#include "fps.hpp"
#include "ghosts.hpp"


int main(){


	sf::RenderWindow window(sf::VideoMode(width, height), "Pacman", sf::Style::Close | sf::Style::Titlebar);
	// window.setFramerateLimit(120);

	TileMap map("map.txt");
	Pacman player(1, 5);
	Ghost inky(1, 2);

	FPS fps;
	float lastFPS;
	float currentFPS = 0;

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

		if(currentFPS >= 0) currentFPS = 120;
		player.move(map, currentFPS);
		inky.move(map, player, currentFPS);

		window.draw(map);
		window.draw(player);
		window.draw(inky);

		window.display();

		fps.update();

	}
}


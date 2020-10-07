// Standar library
#include<iostream>
#include<vector>
#include<unordered_set>
#include <random>
#include<bitset>

// Require download
#include<SFML/Graphics.hpp>
const int width = 300;   // width and height of window
const int height = 900;
const int scl = 1;     // length of each square cell

#include "fps.hpp"

/*
class Temp
{
private:

	#define EmptyGrid std::vector<std::vector<unsigned char>> (floor(width/scl), std::vector<unsigned char>(floor(width/scl)));

	std::vector<std::vector<unsigned char>> world;
	std::vector<sf::Vertex> quads;

	int get_neighbour_count(int x, int y)
	{
		int count = 0;
		for(int i = -1; i < 2; i++){
		for(int j = -1; j < 2; j++){
			if(i != 0 || j != 0){
				if((x+j) >= 0 && (x+j) < world[0].size() && (y+i) >= 0 && (y+i) < world.size()){
					if((world.at(y+i).at(x+j)) & 0x01)
					{
						count++;
					}
				}
			}
		}
    	}
		return count;
	}

	void update_neighbours(int x, int y, std::vector<std::vector<unsigned char>>& grid)
	{
		for(int i = -1; i < 2; i++){
		for(int j = -1; j < 2; j++){
			if(i != 0 || j != 0){
				int temp_pos[] = {x + j, y + i};
				if(temp_pos[0] >= 0 && temp_pos[0] < world[0].size() && temp_pos[1] >= 0 && temp_pos[1] < world.size()){
					grid[temp_pos[1]][temp_pos[0]] = ((grid[temp_pos[1]][temp_pos[0]] >> 1) + 1) << 1;
				}
			}
		}
    	}
	}

	void emplace_quad(int x, int y, std::vector<sf::Vertex>& arr)
	{
		arr.emplace_back(sf::Vector2f(x*scl, y*scl), sf::Color::White);
		arr.emplace_back(sf::Vector2f(x*scl+scl, y*scl), sf::Color::White);
		arr.emplace_back(sf::Vector2f(x*scl+scl, y*scl+scl), sf::Color::White);
		arr.emplace_back(sf::Vector2f(x*scl, y*scl+scl), sf::Color::White);
	}

public:

	Temp()
	{

		world = EmptyGrid;
		quads.reserve(world.size() * world[0].size() * 0.4);

		for(int i = 0; i < world.size(); i++)
		{
			for(int j = 0; j < world[i].size(); j++)
			{
				if((std::rand() % 2 == 0))
				{
					world[i][j] |= 1UL << 0;
				}
				int yes = get_neighbour_count(j, i);
				world[i][j] = ((world[i][j] >> 1) + yes) << 1;
			}
		}
	}

	void next_gen()
	{

		std::vector<std::vector<unsigned char>> next = EmptyGrid;
		quads.clear();
		for(int i = 0; i < world.size(); i++)
		{
			for(int j = 0; j < world[i].size(); j++)
			{

				if(world[i][j] == 0)
				{
					continue;
				}

				int count = world[i][j] >> 1;


				if((world[i][j] >> 0) & 1U)
				{
					if(count == 2 || count == 3)
					{
						next[i][j] |= 1UL << 0;
						update_neighbours(j, i, next);
						emplace_quad(j, i, quads);
					}
				}else{
					if(count == 3)
					{
						next[i][j] |= 1UL << 0;
						update_neighbours(j, i, next);
						emplace_quad(j, i, quads);
					}
				}
			}
		}
		world = next;
	}

	void draw(sf::RenderWindow& wn)
	{

		wn.draw(&quads[0], quads.size(), sf::Quads);
	}

};*/



class Grid
{
private:
	struct Cell
	{
		bool isAlive = false;
		int neighbours_count = 0;
	};

	int m_widht, m_height;

	#define EmptyGrid std::vector<std::vector<Cell>> (floor(width/scl), std::vector<Cell>(floor(width/scl)));

	std::vector<std::vector<Cell>> world;
	std::vector<sf::Vertex> quads;

	int get_neighbour_count(int x, int y)
	{
		int count = 0;
		for(int i = -1; i < 2; i++){
		for(int j = -1; j < 2; j++){
			if(i != 0 || j != 0){
				int temp_pos[] = {x + j, y + i};
				if(temp_pos[0] >= 0 && temp_pos[0] < world[0].size() && temp_pos[1] >= 0 && temp_pos[1] < world.size()){
						if(world.at(temp_pos[1]).at(temp_pos[0]).isAlive){
							count++;
					}
				}
			}
		}
    	}
		return count;
	}


	void update_neighbours(int x, int y, std::vector<std::vector<Cell>>& grid)
	{
		for(int i = -1; i < 2; i++){
		for(int j = -1; j < 2; j++){
			if(i != 0 || j != 0){
				int temp_pos[] = {x + j, y + i};
				if(temp_pos[0] >= 0 && temp_pos[0] < world[0].size() && temp_pos[1] >= 0 && temp_pos[1] < world.size()){
					grid[temp_pos[1]][temp_pos[0]].neighbours_count++;
				}
			}
		}
    	}
	}

	void emplace_quad(int x, int y, std::vector<sf::Vertex>& arr)
	{
		arr.emplace_back(sf::Vector2f(x*scl, y*scl), sf::Color::White);
		arr.emplace_back(sf::Vector2f(x*scl+scl, y*scl), sf::Color::White);
		arr.emplace_back(sf::Vector2f(x*scl+scl, y*scl+scl), sf::Color::White);
		arr.emplace_back(sf::Vector2f(x*scl, y*scl+scl), sf::Color::White);
	}

public:

	Grid(int w, int h)
	{
		m_widht = w;
		m_height = h;

		world = EmptyGrid;
		quads.reserve(world.size() * world[0].size() * 0.4);

		for(int i = 0; i < world.size(); i++)
		{
			for(int j = 0; j < world[i].size(); j++)
			{
				world[i][j].isAlive = (std::rand() % 2 == 0);

				world[i][j].neighbours_count = get_neighbour_count(j, i);
			}
		}
	}



	void next_gen()
	{

		auto next = EmptyGrid;
		quads.clear();
		for(int i = 0; i < world.size(); i++)
		{
			for(int j = 0; j < world[i].size(); j++)
			{

				if(!world[i][j].isAlive && world[i][j].neighbours_count == 0)
				{
					continue;
				}

				if(world[i][j].isAlive && (world[i][j].neighbours_count == 2 || world[i][j].neighbours_count == 3)){
					next[i][j].isAlive = true;
					update_neighbours(j, i, next);
					emplace_quad(j, i, quads);
				}else if(!world[i][j].isAlive && world[i][j].neighbours_count == 3){
					next[i][j].isAlive = true;
					update_neighbours(j, i, next);
					emplace_quad(j, i, quads);
				}
			}
		}
		world = next;
	}

	void draw(sf::RenderWindow& wn)
	{

		wn.draw(&quads[0], quads.size(), sf::Quads);
	}

};

int main(){

	sf::RenderWindow window(sf::VideoMode(width, height), "Game of life", sf::Style::Close | sf::Style::Titlebar); // inits window
	// window.setFramerateLimit(1);
	srand((int)time(0));

	Grid map(0, 0);

	FPS fps;
	float lastFPS;
	float currentFPS;

	// eventlistener
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

		map.draw(window);
		map.next_gen();

		window.display();

		fps.update();
	}
}
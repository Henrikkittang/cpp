// Standar library
#include<iostream>
#include<vector>
#include<random>
#include<array>

// Require download
#include<SFML/Graphics.hpp>


#include "fps.hpp"

class Cell
{
private:
	bool alive = false;
	bool next_state = false;
	int neighbours_count = 0;
	int next_negbours_count = 0;
public:

	int get_neighbour_count() const { return neighbours_count; }
	bool is_alive() const { return alive; }
	void add_neighbour(){ next_negbours_count++; }
	void set_alive() { next_state = true; }

	void update()
	{
		// std::cout << alive << ", " << next_state << ", ";
		// std::cout << neighbours_count << ", " << next_negbours_count << "\n";

		alive = next_state;
		neighbours_count = next_negbours_count;
		next_state = false;
		next_negbours_count = 0;
	}
};

class Grid
{
private:

	int m_width, m_height, m_scl;
	std::vector<std::vector<Cell>> m_world;
	std::vector<sf::Vertex> quads;


public:

	Grid(int w, int h, int s)
	{
		m_width = w / s;
		m_height = h / s;
		m_scl = s;

		m_world = std::vector<std::vector<Cell>> (m_height, std::vector<Cell>(m_width));;
		quads.reserve(m_height * m_width * 0.4);

		for(int i = 0; i < m_height; i++)
		{
			for(int j = 0; j < m_width; j++)
			{
				if(std::rand() % 2 == 0)
				{
					m_world[i][j].set_alive();
					m_world[i][j].update();
					update_neighbours(j, i);
				}
			}
		}
	}


private:
	void update_neighbours(int x, int y)
	{
		for(int i = -1; i < 2; i++){
			for(int j = -1; j < 2; j++){
				if(i == 0 && j == 0)
					continue;

				int px = x + j; int py = y + i;
				if(px >= 0 && px < m_width && py >= 0 && py < m_height)
					m_world[py][px].add_neighbour();
			}
    	}
	}

	void emplace_quad(int x, int y)
	{
		quads.emplace_back(sf::Vector2f(x*m_scl, y*m_scl), sf::Color::White);
		quads.emplace_back(sf::Vector2f(x*m_scl+m_scl, y*m_scl), sf::Color::White);
		quads.emplace_back(sf::Vector2f(x*m_scl+m_scl, y*m_scl+m_scl), sf::Color::White);
		quads.emplace_back(sf::Vector2f(x*m_scl, y*m_scl+m_scl), sf::Color::White);
	}

public:

	void next_gen()
	{
		quads.clear();

		for(int i = 0; i < m_height; i++)
		{
			for(int j = 0; j < m_width; j++)
			{
				if(!m_world[i][j].is_alive() && m_world[i][j].get_neighbour_count() < 3)
				{
					continue;
				}

				if( (m_world[i][j].is_alive() && (m_world[i][j].get_neighbour_count() == 2 || m_world[i][j].get_neighbour_count() == 3)) ||
					(!m_world[i][j].is_alive() && m_world[i][j].get_neighbour_count() == 3))
				{
					m_world[i][j].set_alive();
					update_neighbours(j, i);
					emplace_quad(j, i);
				}
			}
		}


		for(int i = 0; i < m_height; i++)
		{
			for(int j = 0; j < m_width; j++)
			{
				m_world[i][j].update();
			}
		}
	}


	void draw(sf::RenderWindow& wn) const
	{
		wn.draw(&quads[0], quads.size(), sf::Quads);
	}
};

int main(){

	int width = 1800;   // width and height of window
	int height = 900;
	int scl = 1;     // length of each square cell

	sf::RenderWindow window(sf::VideoMode(width, height), "Game of life", sf::Style::Close | sf::Style::Titlebar); // inits window
	// window.setFramerateLimit(1);
	srand((int)time(0));

	Grid map(width, height, scl);


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

		map.next_gen();
		map.draw(window);

		window.display();

		fps.update();
	}
}
#include<iostream>
#include<random>
#include<deque>
#include<vector>

#include<SFML/Graphics.hpp>

#include "fps.hpp"
#include "pathfinding.hpp"

const int width = 800;
const int height = 800;
const int scl = 5;

class Fruit{
private:
	bool isPos(std::deque< std::vector<float> >& playerBody){
		for(const auto& bodyRect : playerBody)
		{
			if(bodyRect[0] * scl == fruitPos.x && bodyRect[1] * scl == fruitPos.y)
			{
				return true;
			}
		}
		return false;
	}

public:
	sf::Vector2f fruitPos;

	Fruit()
	{
		fruitPos = sf::Vector2f(4, 4);
	}

	void newPosition(std::deque< std::vector<float> >& playerBody)
	{
		fruitPos.x = std::rand() % ((width / scl) - 2) + 2;
		fruitPos.y = std::rand() % ((height / scl) - 2) + 2;
		while(isPos(playerBody))
		{
			fruitPos.x = std::rand() % ((width / scl) - 2) + 2;
			fruitPos.y = std::rand() % ((height / scl) - 2) + 2;
		}
	}

	void draw(sf::RenderWindow& wn)
	{
		sf::RectangleShape fruitRect;
		fruitRect.setSize(sf::Vector2f(scl, scl));
		fruitRect.setFillColor(sf::Color::Green);
		fruitRect.setPosition(fruitPos.x * scl , fruitPos.y * scl );
		wn.draw(fruitRect);
	}
};

class Snake{
private:
	#define EmptyGrid std::vector<std::vector<int>>(height/scl, std::vector<int>(width/scl, 0));

	std::vector<std::vector<int>> path;
	std::vector<std::vector<int>> grid = EmptyGrid

public:
	std::deque< std::vector<float> > body;

	Snake(){
		sf::RectangleShape head;

		body = { {(width / scl) * 4, (width / scl) * 4} };
	}

	void fillGrid(){
		grid = EmptyGrid;
		for(int i = 0; i < body.size(); i++){
			std::vector<int> pos = {(int)(body[i][0]/scl), (int)(body[i][1]/scl)};
			grid[pos[1]][pos[0]] = 1;
		}
	}

	void move(Fruit& fruit){
		std::vector<int> curHeadPos = {(int)(body[0][0]/scl), (int)(body[0][1]/scl)};

		if(path.size() == 0){
			fruit.newPosition(body);
			fillGrid();
			body.push_back(body[0]);
			path = find_path(grid, {(int)curHeadPos[0], (int)curHeadPos[1]}, {(int)fruit.fruitPos.x, (int)fruit.fruitPos.y});
			std::vector<int> test = {-1, -1};
			while(path[0] == test){
				fruit.newPosition(body);
				path = find_path(grid, {(int)curHeadPos[0], (int)curHeadPos[1]}, {(int)fruit.fruitPos.x, (int)fruit.fruitPos.y});
			}
		}

		std::vector<int> nextPos = path[path.size()-1];
		path.pop_back();

		body.pop_back();
		body.push_front({(float)nextPos[0] * scl, (float)nextPos[1] * scl});

		//collisionWithBody();

	}

	void draw(sf::RenderWindow& wn){
		std::vector<sf::Vertex> triangle_strip;
		triangle_strip.reserve(body.size() * 4);

		triangle_strip.emplace_back(sf::Vector2f(body[0][0], body[0][1]), sf::Color::Red);
		for(const auto& bodyPart : body){
			triangle_strip.emplace_back(sf::Vector2f(bodyPart[0], bodyPart[1]), sf::Color::Red);
			triangle_strip.emplace_back(sf::Vector2f(bodyPart[0], bodyPart[1] + scl), sf::Color::Red);
			triangle_strip.emplace_back(sf::Vector2f(bodyPart[0] + scl, bodyPart[1]), sf::Color::Red);
			triangle_strip.emplace_back(sf::Vector2f(bodyPart[0] + scl, bodyPart[1] + scl), sf::Color::Red);
		}

		wn.draw(&triangle_strip[0], triangle_strip.size(), sf::TrianglesStrip);
	}
};

int main(){

	sf::RenderWindow window(sf::VideoMode(width, height), "Snake AI", sf::Style::Close | sf::Style::Titlebar);
	srand((int)time(0));

	Snake player;
	Fruit fruit;

	FPS fps;
	float lastFPS;
	float currentFPS;

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

		player.move(fruit);
		player.draw(window);
		fruit.draw(window);

		window.display();

		fps.update();
	}
}


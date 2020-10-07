#include<iostream>
#include<random>
#include<SFML/Graphics.hpp>
#include "perlin_noise.hpp"

const int width = 800;
const int height = 800;
const int scl = 50;

float rand_range(float start, float end)
{
	float result = (float)(std::rand() % (int)(end - start)) + start;
	// std::cout << start << ", " << end << ", " << result << "\n";
	return result;
}

std::vector<sf::Vertex> make_texture()
{


}

int main(){

	sf::ContextSettings settings;
	settings.antialiasingLevel = 8;
	sf::RenderWindow window(sf::VideoMode(width, height), "Background texture", sf::Style::Close | sf::Style::Titlebar, settings);
	// window.setFramerateLimit(10);

	srand((int)time(0));

	std::vector<sf::Vertex> rect;
	rect.emplace_back(sf::Vector2f(10, 10), sf::Color::Red);
	rect.emplace_back(sf::Vector2f(10, 100), sf::Color::Red);
	rect.emplace_back(sf::Vector2f(100, 10), sf::Color::Red);
	rect.emplace_back(sf::Vector2f(100, 100), sf::Color::Red);



	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();

		window.draw(&rect[0], rect.size(), sf::TriangleStrip);


		window.display();

	}
}


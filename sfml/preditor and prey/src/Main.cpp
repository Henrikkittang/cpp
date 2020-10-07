#include<iostream>
#include<random>
#include<vector>

#include<SFML/Graphics.hpp>
const int width = 800;
const int height = 800;
const int scl = 20;

#include "entity.hpp"

/*
Predator
	- Random movement
	- Health
	- Reproduce when "eating" prey
	- Heal itsself with the preys health
	- Constanly decreasing health

Prey
	- Random movement
	- Health
	- Constanly healing
	- Reproduce over certian health threshold
*/

int main(){
	sf::RenderWindow window(sf::VideoMode(width, height), "Test", sf::Style::Close | sf::Style::Titlebar);
	// window.setFramerateLimit(10);
	srand((int)time(0));

	Predator p1();

	auto grid = std::vector<std::vector<int>>(height/scl, std::vector<int>(width/scl, 0));

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();


		window.display();

	}
}


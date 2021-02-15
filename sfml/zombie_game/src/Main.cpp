#include<iostream>
#include<vector>
#include<random>

#include<SFML/Graphics.hpp>

#include "player.hpp"
#include "enemy.hpp"
#include "world.hpp"

#include "fps.hpp"

int main(){

	size_t width = 800;
	size_t height = 800;

	sf::RenderWindow window(sf::VideoMode(width, height), "Zombie game", sf::Style::Close | sf::Style::Titlebar);
	window.setFramerateLimit(60);
	srand((int)time(0));

	World world(width, height);

	world.spawn_enemy<RegularZombie>(1);

	// world.spawn_enemy<RegularZombie>(8);
	// world.spawn_enemy<FastZombie>(4);
	// world.spawn_enemy<BigZombie>(2);

	world.add_obstacle(sf::Vector2f(250, 250));
	world.add_obstacle(sf::Vector2f(250, 300));
	world.add_obstacle(sf::Vector2f(250, 350));
	world.add_obstacle(sf::Vector2f(250, 400));
	world.add_obstacle(sf::Vector2f(300, 400));
	world.add_obstacle(sf::Vector2f(300, 450));
	world.add_obstacle(sf::Vector2f(350, 450));
	world.add_obstacle(sf::Vector2f(400, 450));

	FPS fps;
	float lastFPS = 0;
	float currentFPS = 0;

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				// enemies.clear();
				// enemies.shrink_to_fit();
				window.close();
			}
		}

		currentFPS = fps.getFPS();
		if(currentFPS != lastFPS){
			std::cout << currentFPS << "\n";
			lastFPS = currentFPS;
		}


		window.clear();

		world.update(window);
		world.draw(window);

		window.display();

		fps.update();

	}
}


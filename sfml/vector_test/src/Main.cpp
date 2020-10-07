#include<iostream>
#include<vector>

#include<SFML/Graphics.hpp>

#include "../vector_lib/collision.hpp"
#include "particle.hpp"
#include "draw_stuff.hpp"

const int width = 800;
const int height = 800;

int main(){
	sf::RenderWindow window(sf::VideoMode(width, height), "Test", sf::Style::Close | sf::Style::Titlebar);
	window.setFramerateLimit(100);



	Triangle2 tri(Point2(350, 200), Point2(480, 250), Point2(400, 350));
	Circle circ( tri.center(), 2 );

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}
		window.clear();



		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)) tri.move(0, -1);
		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)) tri.move(0, 1);
		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)) tri.move(1, 0);
		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)) tri.move(-1, 0);



		draw_polygon(window, tri, sf::Color::Red);
		draw_circle(window, circ);


		window.display();

	}
}


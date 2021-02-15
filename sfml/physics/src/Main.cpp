#include<iostream>
#include<vector>
#include<SFML/Graphics.hpp>

#include "../physics/physics.hpp"

void drawCircle(sf::RenderWindow& wn, Circle2* circle)
{
	sf::CircleShape circ;
	circ.setRadius(circle->getRadius());
	circ.setOutlineColor(sf::Color::Red);
	circ.setOutlineThickness(5);
	circ.setPosition(circle->getCenter().x, circle->getCenter().y);

	wn.draw(circ);
}

int main(){

	sf::RenderWindow window(sf::VideoMode(800, 800), "Physics", sf::Style::Close | sf::Style::Titlebar);
	window.setFramerateLimit(30);



	Physics physics;
	Body2* b1 = physics.addCircle(Point2(100, 100), 50);
	Body2* b2 = physics.addCircle(Point2(500, 100), 50);


	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();

		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)){
			std::cout << "Key pressed \n";
			b1->applyForce(Vector2(100, 0));
		}

		physics.update();
		drawCircle(window, (Circle2*)b1->getShape());
		drawCircle(window, (Circle2*)b2->getShape());

		window.display();

	}
}


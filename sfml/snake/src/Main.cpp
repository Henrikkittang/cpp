#include<iostream>
#include<random>
#include<deque>

#include<SFML/Graphics.hpp>

const int width = 800;
const int height = 800;
const int scl = 40;

sf::Vector2f* fruitPos = new sf::Vector2f(4, 4);

sf::RenderWindow window(sf::VideoMode(width, height), "Test", sf::Style::Close | sf::Style::Titlebar);


void newFruitPos(sf::Vector2f* const& fp, std::deque< sf::RectangleShape >& playerBody){

	while(true){
		float x = std::rand() % (width / scl);
		float y = std::rand() % (height / scl);
		bool flag = false;
		for(auto bodyRect : playerBody){
			if(bodyRect.getPosition().x * scl == x && bodyRect.getPosition().y * scl == y){
				flag = true;
				break;
			}
		}
		if(!flag){
			fruitPos->x = x;
			fruitPos->y = y;
			return;
		}
	}
}

void drawFruit(sf::Vector2f*& fp){
	sf::RectangleShape fruit;
	fruit.setSize(sf::Vector2f(scl, scl));
	fruit.setFillColor(sf::Color::Green);
	fruit.setPosition( fp->x * scl , fp->y * scl );
	window.draw(fruit);
}



class Snake{
private:
	int xSpeed = 1;
	int ySpeed = 0;
public:
	std::deque< sf::RectangleShape > body;

	Snake(){
		sf::RectangleShape head;
		head.setSize(sf::Vector2f(scl, scl));
		head.setFillColor(sf::Color::Red);
		head.setPosition( (width / scl) * 4  , (width / scl) * 4 );

		body = { head };
	}

	void move(sf::Vector2f* const fruitPos){
		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W) && ySpeed != 1){
			xSpeed = 0;
			ySpeed = -1;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S) && ySpeed != -1){
			xSpeed = 0;
			ySpeed = 1;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A) && xSpeed != 1){
			xSpeed = -1;
			ySpeed = 0;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D) && xSpeed != -1){
			xSpeed = 1;
			ySpeed = 0;
		}

		sf::Vector2f curHeadPos = body[0].getPosition();

		sf::RectangleShape newHead;
		newHead.setSize(sf::Vector2f(scl, scl));
		newHead.setFillColor(sf::Color::Red);
		newHead.setPosition(curHeadPos.x + xSpeed * scl, curHeadPos.y + ySpeed * scl);

		collisionWithFruit(fruitPos);

		body.pop_back();
		body.insert(body.begin(), newHead);

		//body.erase(body.begin());
		//body.push_back(newHead);

		collisionWithBody();
	}

	void collisionWithBody(){
		for(int i = 0; i < body.size(); i++){
			auto curPos = body[i].getPosition();
			for(int j = 0; j < body.size(); j++){
				if(i == j) continue;
				auto somePos = body[j].getPosition();
				if(curPos == somePos){

					body = { body[0] };

					return;
				}
			}
		}
	}

	void collisionWithFruit(sf::Vector2f* const& fruitPos){
		auto headPos = body[0].getPosition();

		if(fruitPos->x == headPos.x / scl && fruitPos->y == headPos.y / scl){
			sf::RectangleShape newHead;
			newHead.setSize(sf::Vector2f(scl, scl));
			newHead.setFillColor(sf::Color::Red);
			newHead.setPosition(headPos.x, headPos.y);

			body.push_back(newHead);
			newFruitPos(fruitPos, body);
		}
	}

	void draw(){
		for(auto const& b : body){
			window.draw(b);
		}
	}
};




int main(){

	Snake player;
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

		player.move(fruitPos);
		player.draw();

		drawFruit(fruitPos);

		window.display();

	}
}


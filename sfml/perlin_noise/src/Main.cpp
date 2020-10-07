#include<iostream>
#include<random>
#include<vector>


#include<SFML/Graphics.hpp>
#include "perlin_noise.hpp"

const int width = 800;
const int height = 800;
const int scl = 20;



int main(){

	sf::RenderWindow window(sf::VideoMode(width, height), "Perlin noise", sf::Style::Close | sf::Style::Titlebar);
	// window.setFramerateLimit(10);

	srand((int)time(0));

	std::vector<sf::RectangleShape> rects;
	int scale = 8;
	for(int i = 0; i < height/scale; i++)
	{
		for(int j = 0; j < width/scale; j++)
		{
			sf::RectangleShape temp_rect;
			temp_rect.setPosition( sf::Vector2f(j*scale, i*scale) );
			temp_rect.setSize( sf::Vector2f(scale, scale) );

			/*float noise = multiOctavePerlinNoise2D(j*0.01*scale, i*0.01*scale, 9)*10;
			int color_val = round(noise * 765);

			sf::Color temp_color;
			if(color_val < 255){
				temp_color = sf::Color(255-color_val, color_val, 0);
			}else if(color_val <= 511){
				temp_color = sf::Color(0, 255 - (color_val - 256), color_val-256);
			}else{
				temp_color = sf::Color(color_val-512, 0, 255 - (color_val - 512));
			}*/
			sf::Color temp_color(100, 0, lerp(i, i, j));

			temp_rect.setFillColor(temp_color);

			rects.push_back(temp_rect);
		}
	}


	window.clear();
	for(const auto& rect : rects)
	{
		window.draw(rect);
	}

	window.display();

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}



	}
}


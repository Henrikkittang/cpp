#include<iostream>
#include<vector>
#include<random>
#include<cmath>
#include<string>

#include "SFML/Graphics.hpp"
#include "noise.hpp"

const int g_width = 800;
const int g_height = 800;
const int g_scl = 20;

float dist(float x1, float y1, float x2, float y2)
{
	return sqrtf( powf(x1-x2, 2) + powf(y1-y2, 2));
}

int rand_range(int min, int max)
{
	float rand = (float)std::rand() / RAND_MAX;
	return round((rand * (max - min)) + min);
}

std::string rand_string(int length)
{
	std::string total;
	for(int i = 0; i < length; i++)
	{
		int yes = rand_range(97, 122);
		total += char(yes);
	}
	return total;
}

struct Site
{
	float x, y;
	sf::Color color;
	Site(float tx, float ty, sf::Color tcolor)
		:x(tx), y(ty), color(tcolor)
	{}

	bool operator<(const Site& a) const
	{
		return (this->x < a.x);
	}
};


/*float noise = multiOctavePerlinNoise2D(x*0.1, y*0.1, 6)*1;
		int color_val = round(noise * 765);
		std::cout << color_val << "\n";
		sf::Color temp_color;
		if(color_val < 255){
			temp_color = sf::Color(255-color_val, color_val, 0);
		}else if(color_val <= 511){
			temp_color = sf::Color(0, 255 - (color_val - 256), color_val-256);
		}else{
			temp_color = sf::Color(color_val-512, 0, 255 - (color_val - 512));
		}*/

std::vector<Site> make_sites(int a_amount)
{
	std::vector<Site> sites;
	for(int i = 0; i < a_amount; i++)
	{
		float x = std::rand()%g_width;
		float y = std::rand()%g_height;

		float scl_x = x / 2 + 40;
		float scl_y = y / 2 + 40;

		sf::Color temp_color(100, 0, lerp(scl_y, scl_y, scl_x));
		sites.emplace_back( x, y, temp_color);
	}
	std::sort(sites.begin(), sites.end());

	for(auto& p : sites)
	{
	}

	return sites;
}

sf::Image voronoi(std::vector<Site> a_sites)
{
	sf::Image background;
	background.create(g_width, g_height, sf::Color::Black);

	std::sort(a_sites.begin(), a_sites.end());

	for(int i = 0; i < g_height; i++)
	{
		for(int j = 0; j < g_width; j++)
		{
			float min_dist = INFINITY;
			sf::Color temp_color;


			int idx = 0;
			for(int i = 0; i < a_sites.size()-1; i++)
			{
				if(j > a_sites[i].x && j < a_sites[i+1].x)
				{
					idx = i;
				}
			}

			for(int i = idx+1; i < a_sites.size(); i++)
			{
				auto point = a_sites[i];
				float temp_dist = dist(j, i, point.x, point.y);
				float dist_x = fabs(point.x - j);

				if( temp_dist < min_dist )
				{
					min_dist = temp_dist;
					temp_color = point.color;
				}

				if(dist_x > min_dist)
				{
					break;
				}
			}

			min_dist = INFINITY;
			for(int i = idx; i > 0; i--)
			{
				auto point = a_sites[i];
				float temp_dist = dist(j, i, point.x, point.y);
				float dist_x = fabs(point.x - j);

				if( temp_dist < min_dist )
				{
					min_dist = temp_dist;
					temp_color = point.color;
				}

				if(dist_x > min_dist)
				{
					break;
				}
			}

			background.setPixel(j, i, temp_color);
		}
	}
	return background;
}

int main(){

	sf::RenderWindow window(sf::VideoMode(g_width, g_height), "noice texture", sf::Style::Close | sf::Style::Titlebar);
	srand((int)time(0));

	auto sites = make_sites(120);
	auto background = voronoi(sites);

	sf::Texture background_texture;
	background_texture.loadFromImage(background);
	sf::Sprite background_sprite;
	background_sprite.setTexture(background_texture, true);

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt))
		{
			if(evt.type == evt.Closed || sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Escape)){
				window.close();
			}

			window.clear();

			window.draw(background_sprite);

			if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Space))
			{
				std::string filename = rand_string(10);
				background.saveToFile("screenshots/" + filename + ".png");
				std::cout << "Screenshot taken, image saved as " + filename + ".png \n";
			}

			window.display();

		}
	}
	return 0;
}

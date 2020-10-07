#include<iostream>
#include<vector>
#include<random>

#include<SFML/Graphics.hpp>

constexpr int width = 800;
constexpr int height = 800;
constexpr int scl = 20;

#include "player.hpp"
#include "enemy.hpp"

float rand_range(float start, float end)
{
	return (float)(std::rand() % (int)(end - start)) + start;
}

float dist(float x1, float y1, float x2,  float y2)
{
	return sqrtf(powf(x1 - x2, 2) + powf(y1 - y2, 2));
}

template<typename T>
void spawn_enemy(std::vector<Enemy>& enemies, size_t amount)
{
	for(size_t i = 0; i < amount; i++)
	{
		float temp_x = rand_range(-100, width+100);
		float temp_y = rand_range(-100, height+100);

		while(temp_x > 0 && temp_x < width)
			temp_x = rand_range(-100, width+100);

		while(temp_y > 0 && temp_y < height)
			temp_y = rand_range(-100, height+100);

		enemies.push_back(T(temp_x, temp_y));
	}
}

int main(){
	sf::RenderWindow window(sf::VideoMode(width, height), "Zombie game", sf::Style::Close | sf::Style::Titlebar);
	window.setFramerateLimit(30);
	sf::View view(sf::Vector2f(0, 0), sf::Vector2f(width, height));
	srand((int)time(0));

	std::vector<Enemy> enemies;
	// enemies.reserve(12);
	// spawn_enemy<RegularZombie>(enemies, 8);
	// spawn_enemy<FastZombie>(enemies, 4);
	// spawn_enemy<BigZombie>(enemies, 2);

	Player player(width/2, height/2);

	sf::Texture background_texture;
	background_texture.loadFromFile("images/background.jpg");
	sf::Sprite background_sprite;
	background_sprite.setTexture(background_texture);

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				enemies.clear();
				enemies.shrink_to_fit();
				window.close();
			}
		}

		window.clear();
		window.draw(background_sprite);

		player.move(window);
		player.draw(window);
		player.update_bullets(window);
		view.setCenter(player.pos());
		// window.setView(view);

		for(size_t i = 0; i < enemies.size(); i++)
		{
			float player_angle = player.get_angle(enemies[i].pos());
			enemies[i].draw(window, player_angle);
			sf::Vector2f dir_vect( player.pos().x - enemies[i].pos().x, player.pos().y - enemies[i].pos().y );
			enemies[i].move(dir_vect);

			for(size_t j = 0; j < enemies.size(); j++)
			{
				if(enemies[j] != enemies[i])
				{
					if(dist(enemies[i].pos().x, enemies[i].pos().y, enemies[j].pos().x, enemies[j].pos().y) < 15)
					{
						sf::Vector2f bounce_dir( -enemies[j].pos().x - enemies[i].pos().x, -enemies[j].pos().y - enemies[i].pos().y );
						sf::Vector2f bounce_dir2( enemies[j].pos().x - enemies[i].pos().x, enemies[j].pos().y - enemies[i].pos().y );
						enemies[i].move(bounce_dir);
						enemies[j].move(bounce_dir2);
					}
				}
			}

			if(dist(enemies[i].pos().x, enemies[i].pos().y, player.pos().x, player.pos().y) < 15)
			{
				sf::Vector2f bounce_dir( -player.pos().x - enemies[i].pos().x, -player.pos().y - enemies[i].pos().y );
				sf::Vector2f bounce_dir2( player.pos().x - enemies[i].pos().x, player.pos().y - enemies[i].pos().y );
				enemies[i].move(bounce_dir);
				player.bounce(bounce_dir2);
			}

			auto bullets = player.get_bullets();
			for(size_t j = 0; j < bullets.size(); j++)
			{
				if(dist(bullets[j].pos().x, bullets[j].pos().y, enemies[i].pos().x, enemies[i].pos().y) < 20)
				{
					enemies[i].health -= bullets[j].damage();
					player.remove_bullet(j);
					if(enemies[i].health <= 0)
					{
						enemies.erase(enemies.begin()+i);
					}
				}
			}
		}
		window.display();
	}
}


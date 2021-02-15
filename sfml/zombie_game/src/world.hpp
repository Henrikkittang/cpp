#pragma once
#include<vector>
#include<random>

#include<SFML/Graphics.hpp>

#include "player.hpp"
#include "enemy.hpp"
#include "obstacle.hpp"
#include "pathfinding.hpp"

class World
{
private:
	Player m_player = {400, 400};
	std::vector<Enemy> m_enemies;
	sf::Texture background_texture;
	sf::Sprite background_sprite;
	sf::View view;

	size_t m_width = 1600;
	size_t m_height = 1600;
	size_t m_scl = 50;
	std::vector<std::vector<int>> m_map = std::vector<std::vector<int>>(m_height/m_scl, std::vector<int>(m_width/m_scl, 0));
	std::vector<Obstacle> m_obstacles;

private:
	float rand_range(float start, float end)
	{
		return (float)(std::rand() % (int)(end - start)) + start;
	}

	float dist(float x1, float y1, float x2,  float y2)
	{
		return sqrtf(powf(x1 - x2, 2) + powf(y1 - y2, 2));
	}

	sf::Vector2i posToMap(const sf::Vector2f& pos)
	{
		return sf::Vector2i(pos.x / m_scl - 1, pos.y / m_scl - 1);
	}

	float getAngleFromPoints(int p1x, int p1y, int p2x, int p2y)
	{
		return atan2(p2y-p1y, p2x-p1x) * (180 / 3.141592653589793238463) + 90;
	}

public:

	World(float screen_width, float screen_height)
	{
		// m_player = {m_width/2, m_height/2};

		background_texture.loadFromFile("images/background.jpg");
		background_sprite.setTexture(background_texture);
		view = {sf::Vector2f(0, 0), sf::Vector2f(screen_width, screen_height)};
	}

	// For development
	template<typename T>
	void spawn_enemy(size_t amount)
	{
		for(size_t i = 0; i < amount; i++)
		{
			float temp_x = rand_range(100, m_width-100);
			float temp_y = rand_range(100, m_height-100);

			m_enemies.emplace_back(std::move(T(temp_x, temp_y)));
		}
	}

	void add_obstacle(sf::Vector2f pos)
	{
		if( (int)pos.x % m_scl != 0 )
		{
			std::cout << "Position dont align \n";
			return;
		}

		sf::Vector2i gpos = posToMap(pos);

		m_map[gpos.y][gpos.x] = 1;
		m_obstacles.emplace_back(pos, m_scl, m_scl);
	}

	void playerObstacleCollision()
	{
		for(const auto& pos : m_player.hitbox())
		{
			auto g = posToMap(pos);
			if( m_map[g.y][g.x] == 1 )
			{
				auto bounce_dir = m_player.dir();
				bounce_dir.x *= -1;
				bounce_dir.y *= -1;
				m_player.bounce(bounce_dir);
				break;
			}
		}
	}

	void bulletsBoundryCheck()
	{
		auto bullets = m_player.get_bullets();
		for(size_t i = 0; i < bullets.size(); i++)
		{
			if(bullets[i].pos().x <= 0 || bullets[i].pos().x >= m_width || bullets[i].pos().y <= 0 || bullets[i].pos().y >= m_height)
			{
				m_player.remove_bullet(i);
			}
		}
	}

	void bulletObstacleCollision()
	{
		auto bullets = m_player.get_bullets();
		for(size_t i = 0; i < bullets.size(); i++)
		{
			auto g = posToMap(bullets[i].pos());
			if( m_map[g.y][g.x] == 1 )
			{
				m_player.remove_bullet(i);
			}
		}
	}

	// void moveEnemies(Enemy& enemy)
	// {
	// 	float player_angle = m_player.get_angle(enemy.center());
	// 	sf::Vector2f dir_vect =  {  m_player.pos().x - enemy.center().x, m_player.pos().y - enemy.center().y };
	// 	enemy.move(dir_vect, player_angle);
	// }

	void moveEnemies(Enemy& enemy)
	{
		auto enemyMapPos = posToMap(enemy.center());
		auto playerMapPos = posToMap(m_player.pos());

		auto path = find_path(m_map, {enemyMapPos.x, enemyMapPos.y}, {playerMapPos.x, playerMapPos.y});

		if(!path.empty()) path.pop_back();
		if(!path.empty())
		{
			float angle = getAngleFromPoints(enemyMapPos.x, enemyMapPos.y, path.back()[0], path.back()[1]);
			sf::Vector2f dir_vect = {path.back()[0]-enemyMapPos.x, path.back()[1]-enemyMapPos.y };
			enemy.move(dir_vect, angle);
		}
	}

	void enemyEnemyCollision(Enemy& enemy)
	{
		for(size_t j = 0; j < m_enemies.size(); j++)
		{
			if(m_enemies[j] != enemy)
			{
				if(dist(enemy.center().x, enemy.center().y, m_enemies[j].pos().x, m_enemies[j].pos().y) < 15)
				{
					sf::Vector2f bounce_dir( -m_enemies[j].pos().x - enemy.center().x, -m_enemies[j].pos().y - enemy.center().y );
					sf::Vector2f bounce_dir2( m_enemies[j].pos().x - enemy.center().x, m_enemies[j].pos().y - enemy.center().y );
					enemy.bounce(bounce_dir);
					m_enemies[j].bounce(bounce_dir2);
				}
			}
		}
	}

	void enemyPlayerCollision(Enemy& enemy)
	{
		if(dist(enemy.center().x, enemy.center().y, m_player.pos().x, m_player.pos().y) < 15)
		{
			sf::Vector2f bounce_dir( -m_player.pos().x - enemy.center().x, -m_player.pos().y - enemy.center().y );
			sf::Vector2f bounce_dir2( m_player.pos().x - enemy.center().x, m_player.pos().y - enemy.center().y );
			enemy.bounce(bounce_dir);
			m_player.bounce(bounce_dir2);
		}
	}

	void enemyBulletcollision(Enemy& enemy, size_t index)
	{
		auto bullets = m_player.get_bullets();
		for(size_t j = 0; j < bullets.size(); j++)
		{
			if(dist(bullets[j].pos().x, bullets[j].pos().y, enemy.center().x, enemy.center().y) < 20)
			{
				enemy.health -= bullets[j].damage();
				m_player.remove_bullet(j);
				if(enemy.health <= 0)
				{
					m_enemies.erase(m_enemies.begin()+index);
				}
			}
		}
	}

	void update(sf::RenderWindow& wn)
	{
		m_player.move(wn);
		m_player.update_bullets(wn);
		playerObstacleCollision();

		bulletsBoundryCheck();
		bulletObstacleCollision();

		view.setCenter(m_player.pos());
		wn.setView(view);

		for(size_t i = 0; i < m_enemies.size(); i++)
		{
			moveEnemies(m_enemies[i]);
			enemyEnemyCollision(m_enemies[i]);
			enemyBulletcollision(m_enemies[i], i);
		}
	}

	void draw(sf::RenderWindow& wn)
	{
		wn.draw(background_sprite);
		m_player.draw(wn);
		m_player.draw_bullets(wn);
		for(auto& enemy : m_enemies)
		{
			enemy.draw(wn);
		}
		for(auto& obstacle : m_obstacles)
		{
			obstacle.draw(wn);
		}
	}
};










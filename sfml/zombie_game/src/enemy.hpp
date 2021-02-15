#pragma once
#include<cmath>
#include<SFML/Graphics.hpp>


class Enemy
{
protected:
	sf::RectangleShape enemy;
	sf::Texture m_texture;
	float m_speed;
	float m_size;
	float m_default_health;
public:
	float health;

public:

	void bounce(const sf::Vector2f& dir)
	{
		float length = sqrtf(powf(dir.x, 2) + powf(dir.y, 2));
		auto dir_vect = sf::Vector2f( dir.x / length, dir.y / length );
		enemy.move(dir_vect.x * m_speed, dir_vect.y* m_speed);
	}

	void move(const sf::Vector2f& dir, float rotation_angle)
	{
		bounce(dir);
		enemy.setRotation(rotation_angle);
	}

	const sf::Vector2f& pos() const { return enemy.getPosition(); }
	float size() const { return m_size; }
	sf::Vector2f center() { return sf::Vector2f(pos().x + size()/2, pos().y + size()/2 ); }

	void draw(sf::RenderWindow& wn)
	{
		enemy.setTexture(&m_texture);

		float len = (health/m_default_health) * m_size;

		sf::RectangleShape green_health;
		green_health.setPosition(pos().x-15, pos().y-25);
		green_health.setSize(sf::Vector2f(len+10, 5));
		green_health.setFillColor(sf::Color::Green);

		sf::RectangleShape red_health;
		red_health.setPosition(pos().x-15, pos().y-25);
		red_health.setSize(sf::Vector2f(m_size+10, 5));
		red_health.setFillColor(sf::Color::Red);

		wn.draw(enemy);
		wn.draw(red_health);
		wn.draw(green_health);
	}

	bool operator==(const Enemy& other) const
	{
		return (other.pos().x == pos().x && other.pos().y == pos().y);
	}

	bool operator!=(const Enemy& other) const
	{
		return (other.pos().x != pos().x || other.pos().y != pos().y);
	}
};


class RegularZombie : public Enemy
{
public:
	RegularZombie(float ax, float ay)
	{
		m_speed = 2;
		m_size = 40;
		m_default_health = 60;
		health = 60;

 		enemy.setPosition(ax, ay);
		enemy.setSize(sf::Vector2f(m_size, m_size));
		enemy.setOrigin(sf::Vector2f(m_size/2, m_size/2));
		// enemy.setFillColor(sf::Color::Green);

		m_texture.loadFromFile("images/regular_zombie.png");
	}
};


class FastZombie : public Enemy
{
public:
	FastZombie(float ax, float ay)
	{
		m_speed = 4;
		m_size = 30;
		m_default_health = 40;
		health = 40;

 		enemy.setPosition(ax, ay);
		enemy.setSize(sf::Vector2f(m_size, m_size));
		enemy.setOrigin(sf::Vector2f(m_size/2, m_size/2));
		// enemy.setFillColor(sf::Color::Green);

		m_texture.loadFromFile("images/regular_zombie.png");
	}
};

class BigZombie : public Enemy
{
public:
	BigZombie(float ax, float ay)
	{
		m_speed = 1;
		m_size = 60;
		m_default_health = 100;
		health = 100;

 		enemy.setPosition(ax, ay);
		enemy.setSize(sf::Vector2f(m_size, m_size));
		enemy.setOrigin(sf::Vector2f(m_size/2, m_size/2));
		// enemy.setFillColor(sf::Color::Green);

		m_texture.loadFromFile("images/regular_zombie.png");
	}
};

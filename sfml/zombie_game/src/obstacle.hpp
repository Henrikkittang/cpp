#pragma once

#include<SFML/Graphics.hpp>


class Obstacle
{
private:
	sf::RectangleShape m_boundries;
	sf::Texture m_texture;

public:

	Obstacle(sf::Vector2f pos, float width, float height, sf::Texture texture)
	{
		m_texture = texture;
		m_boundries.setPosition(pos);
		m_boundries.setSize(sf::Vector2f(width, height));
		m_boundries.setFillColor(sf::Color::Blue);
		m_boundries.setTexture(&m_texture);
	}

	Obstacle(sf::Vector2f pos, float width, float height)
	{
		m_boundries.setPosition(pos);
		m_boundries.setSize(sf::Vector2f(width, height));
		m_boundries.setFillColor(sf::Color::Blue);
	}

	void draw(sf::RenderWindow& wn)
	{
		wn.draw(m_boundries);
	}

};


#pragma once
#include <array>

#include <SFML/graphics.hpp>

class Entity
{
private:    

    sf::RectangleShape m_rectangle;

    

public:

    Entity(const sf::Vector2f& position, int width, int height, const std::string& texture_path)
    {
        sf::Texture* texture = new sf::Texture();
        texture->loadFromFile(texture_path);

        m_rectangle = sf::RectangleShape(sf::Vector2f(width, height));
        m_rectangle.setPosition(position);
        m_rectangle.setOrigin(width/2, height/2);
        m_rectangle.setTexture(texture);
    }

    ~Entity()
    {
        delete m_rectangle.getTexture();
    }

    void drawHitbox(sf::RenderWindow& wn)
    {
        sf::RectangleShape r(m_rectangle.getSize());
		r.setPosition(hitbox()[0]);
		r.setOutlineColor(sf::Color::Red);
		r.setOutlineThickness(2);
		r.setFillColor(sf::Color::Transparent);
		wn.draw(r);
    }


    void draw(sf::RenderWindow& wn)
    {
        wn.draw(m_rectangle);
        drawHitbox(wn);
    }

    const sf::Vector2f& getPos() const { return m_rectangle.getPosition(); }
    const int getWidth() const { return m_rectangle.getSize().x; }
    const int getHeight() const { return m_rectangle.getSize().y; }


    std::array<sf::Vector2f, 4> hitbox() const
	{
		sf::Vector2f corner = {getPos().x - getWidth() / 2, getPos().y - getHeight() / 2 };

		std::array<sf::Vector2f, 4> arr = {
			corner,
			{corner.x + getWidth(), corner.y},
			{corner.x + getWidth(), corner.y + getHeight()},
			{corner.x, corner.y + getHeight()}
		};
		return arr;
	}



};
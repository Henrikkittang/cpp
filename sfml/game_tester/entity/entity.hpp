#pragma once
#include <array>
#include <string>

#include <SFML/graphics.hpp>

class Entity
{
protected:    
    sf::RectangleShape m_rectangle;

public:

    Entity(){}

    Entity(const sf::Vector2f& position, const sf::Vector2f& size, sf::Texture* texture)
    {

        m_rectangle = sf::RectangleShape(size);
        m_rectangle.setPosition(position);
        m_rectangle.setOrigin(size.x/2, size.y/2);
        // m_rectangle.setFillColor(sf::Color::Green);

        m_rectangle.setTexture(texture);
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
    const sf::Vector2i getGridPos(const sf::Vector2f& pixelPos, int sql) 
    {  
        return { (int)(pixelPos.x / sql), (int)(pixelPos.y / sql) }; 
    }
    const sf::Vector2i getGridPos(int sql) 
    {  
        return { (int)(getPos().x / sql), (int)(getPos().y / sql) }; 
    }
    

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
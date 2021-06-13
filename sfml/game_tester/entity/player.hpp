#pragma once
#include "movable.hpp"

class Player : public Entity, public Movable
{
private:

public:

    Player() {}

    Player(
        const sf::Vector2f& position, 
        const sf::Vector2f& size, 
        const std::string& texture_path
    )
        : Entity(position, size, texture_path), Movable(500)
    {}

    void move(float dt) override
    {
		m_direction = {0, 0};

		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)){
		    m_direction.y = -m_velocity * dt;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)){
		    m_direction.y = m_velocity * dt;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)){
		    m_direction.x = -m_velocity * dt;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)){
		    m_direction.x = m_velocity * dt;
		}

        m_rectangle.move(m_direction.x, m_direction.y);
    }

};
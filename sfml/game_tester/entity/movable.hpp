#pragma once

#include "entity.hpp"
#include "../trigonometry/vector.hpp"

class Movable : public Entity
{
protected:
    float m_velocity;
    trig::Vector m_direction;


public:

    Movable() {}

    Movable(
        const sf::Vector2f& position, 
        const sf::Vector2f& size, 
        const std::string& texture_path,
        float velocity
    )
        : Entity(position, size, texture_path), m_velocity(velocity)
    {

    }

    float getVelocity() const { return m_velocity; }
    const trig::Vector& getDirection() const { return m_direction; }
    

    virtual void move(float dt) = 0;

};

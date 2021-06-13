#pragma once

#include "entity.hpp"
#include "../trigonometry/vector.hpp"

class Movable
{
protected:
    float m_velocity;
    trig::Vector m_direction;
    trig::Vector m_orientation;

public:

    Movable() {}

    Movable(int velocity)
        : m_velocity(velocity)
    {}

    float getVelocity() const { return m_velocity; }
    const trig::Vector& getDirection() const { return m_direction; }
    

    virtual void move(float dt) = 0;
    // virtual void collision(float dt) = 0;

};

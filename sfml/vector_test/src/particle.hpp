#pragma once

#include <chrono>

#include "../vector_lib/vector2.hpp"
#include "../vector_lib/point2.hpp"
#include "../vector_lib/circle.hpp"


unsigned long long get_time()
{
    unsigned long long now = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();
	return now;
}

class Particle : public Circle
{
private:
	double m_mass;
	Vector2 m_velocity;

public:
	Particle(double r, Point2 a_pos, double a_mass, Vector2 a_velocity=Vector2(0, 0))
		:m_mass(a_mass), m_velocity(a_velocity)
	{
		center = a_pos;
		radius = r;
	}

	Point2 position(){return center;}
	double mass(){return m_mass;}

	void update(const Vector2& force)
	{
		Vector2 acceleration( force.x / m_mass, force.y / m_mass );
		m_velocity = m_velocity + acceleration;
		center.move( m_velocity.x, m_velocity.y );
	}
};

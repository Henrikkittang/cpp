#pragma once
#include "../shapes/shape.hpp"
#include "../trigometry/vector2.hpp"


class Body2
{
private:
	double m_resolution, m_mass, m_friction;
	Shape2* m_shape;
	Vector2 m_velocity;

public:

	Body2(Shape2* shape, double res, double mass, double fric)
	{
		m_shape = shape;
		m_resolution = res;
		m_mass = mass;
		m_friction = fric;
	}

	void update()
	{
		m_shape->offsetOrigin(m_velocity);
	}

	Shape2* getShape() { return m_shape; }

	void applyForce(const Vector2& force)
	{
		// a = F/m 	v  = v_0 + a
		Vector2 acclereration = force / m_mass;
		m_velocity = m_velocity + acclereration;
		std::cout << m_velocity << "\n";
	}

	void invertVelocity()
	{
		m_velocity = m_velocity * -1;
	}

};





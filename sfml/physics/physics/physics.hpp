#pragma once

#include "vector"

#include "body/body2.hpp"
#include "collision/manifold.hpp"
#include "collision/collision.hpp"
#include "shapes/shape.hpp"
#include "shapes/circle2.hpp"

class Physics
{
public:
	Collision m_collision;
	std::vector<Body2> m_bodies;

public:

	Body2* addCircle(const Point2& position, double radius)
	{
		Circle2* c = new Circle2(position, radius);
		m_bodies.push_back( Body2(c, 0.5, 1, 0.5) );
		return &m_bodies[m_bodies.size()-1];
	}

	void update()
	{
		for(auto& b1 : m_bodies)
		{
			b1.update();
			for(auto& b2 : m_bodies)
			{
				Manifold manifold(b1.getShape(), b2.getShape());
				if(m_collision.circleCirlce(manifold))
				{
					std::cout << "Collision \n";
					m_collision.resolveCollision(manifold);
					b1.invertVelocity();
					b2.invertVelocity();
				}
			}
		}
	}


};















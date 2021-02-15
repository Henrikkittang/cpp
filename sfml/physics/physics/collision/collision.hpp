#pragma once

#include "../trigometry/vector2.hpp"

#include "../shapes/shape.hpp"
#include "../shapes/rectangle2.hpp"
#include "../shapes/circle2.hpp"

#include "manifold.hpp"

class Collision
{
private:

public:

	void resolveCollision(Manifold& manifold)
	{
		manifold.s2->offsetOrigin(manifold.normal);
	}

	bool circleCirlce(Manifold& manifold)
	{
		if(manifold.s1 == manifold.s2) return false;

		Circle2* c1 = (Circle2*)manifold.s1; // A
		Circle2* c2 = (Circle2*)manifold.s2; // B

		// Vect : AB
		Vector2 vect = make_vector2(c1->getCenter(), c2->getCenter());

		if(vect.length() < c1->getRadius() + c2->getRadius())
		{
			double depth = vect.length() - c2->getRadius();
			vect.normalize();
			manifold.normal = vect * depth;
			return true;
		}else{
			return false;
		}
	}
};
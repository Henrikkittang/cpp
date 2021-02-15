#pragma once
#include "../trigometry/point2.hpp"
#include "../trigometry/vector2.hpp"
#include "../shapes/shape.hpp"

struct Manifold
{
	Shape2* s1;
	Shape2* s2;
	Vector2 normal;

	Manifold(Shape2* a1, Shape2* a2)
		:s1(a1), s2(a2)
	{}
};
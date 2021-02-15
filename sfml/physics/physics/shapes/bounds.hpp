#pragma once
#include "../trigometry/point2.hpp"

struct Bounds
{
	Point2 points[4];

	Bounds(const Point2& p1, const Point2& p2, const Point2& p3, const Point2& p4)
	{
		points[0] = p1;
		points[1] = p2;
		points[2] = p3;
		points[3] = p4;
	}
};
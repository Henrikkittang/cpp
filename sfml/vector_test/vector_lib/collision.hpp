#pragma once
#include<iostream>
#include<cmath>

#include "point2.hpp"
#include "vector2.hpp"
#include "lines2.hpp"
#include "polygons.hpp"
#include "circle.hpp"


double radiansToDegrees(const double radians)
{
	return radians * (180/PI);
}

double degreesToRadians(const double degrees)
{
	return degrees*PI / 180;
}

bool circleCircleCollision(const Circle& circle1, const Circle& circle2)
{
	Vector2 vect = make_vector2( circle1.center, circle2.center );
	return (vect.length() < circle1.radius + circle2.radius);
}

bool PolygonCircleCollision(const Polygon2& poly, const Circle& circle)
{
	for(int i = 0; i < poly.point_count(); i++)
	{
		int idx = i+1;
		if( idx > poly.point_count() ) idx = 0;

		Line_seg2 seg( poly[i], poly[idx] );
		double dist = seg.distToPoint(circle.center);
		if(dist < circle.radius) return true;
	}
	return false;
}

bool polygonPolygonCollision(const Polygon2& poly1, const Polygon2& poly2)
{
	for(int i = 0; i < poly1.point_count(); i++)
	{
		int idx1 = i+1;
		if(idx1 > poly1.point_count()) idx1 = 0;

		Line_seg2 line1( poly1[i], poly1[idx1] );

		for(int j = 0; j < poly2.point_count(); j++)
		{
			int idx2 = j+1;
			if(idx2 > poly2.point_count()) idx2 = 0;

			Line_seg2 line2( poly2[j], poly2[idx2] );
			if(line1.intersection_point(line2) != Point2(0, 0)) return true;
		}
	}
	return false;

}

/*-------------------------------------*/



#pragma once
#include "../trigometry/point2.hpp"
#include "../trigometry/vector2.hpp"
#include "bounds.hpp"


class Shape2
{
protected:
	// Here goes stuff like bounding rectangles and stuff
	Point2 m_origin;

public:

	const Point2& getOrigin() const { return m_origin; }
	void setOrigin(const Point2& p)
	{
		m_origin = p;
		updateProperties();
	}

	void offsetOrigin(const Vector2& v)
	{
		m_origin.x += v.x;
		m_origin.y += v.y;
		updateProperties();
	}

	virtual void updateProperties() = 0;
	virtual int getPointCount() const = 0;
	virtual Point2 getCenter() const = 0;
	// Points given in clockwise order
	virtual Bounds getBoundingRectangle() const = 0;

};









#pragma once
#include<math.h>
#include "shape.hpp"
#include "bounds.hpp"

class Rectangle2 : public Shape2
{
private:
	Point2 m_position;
	double m_width, m_height;

public:

	const Point2& position() const{ return m_position; }
	double width() const{ return m_width; }
	double height() const { return m_height; }
	Point2 corner() const { return Point2(m_position.x + m_width, m_position.y+m_height); }

	int getPointCount() const override { return 4; }

	Point2 getCenter() const override
	{
		return Point2(std::round(m_position.x + m_width/2), std::round(m_position.y + m_height/2) );
	}


	Bounds getBoundingRectangle() const override
	{
		Bounds bounds = {
			m_position,
			Point2(m_position.x+m_width, m_position.y),
			Point2(m_position.x+m_width, m_position.y+m_height),
			Point2(m_position.x, m_position.y+m_height),
		};
		return bounds;
	}
};





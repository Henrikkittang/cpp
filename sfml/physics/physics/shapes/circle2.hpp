#pragma once
#include "shape.hpp"
#include "bounds.hpp"
#include "../trigometry/point2.hpp"

class Circle2 : public Shape2
{
private:
	Point2 m_center;
	double m_radius;

public:

	Circle2(const Point2& position, double radius)
		// :m_center(position), m_radius(radius)
	{
		m_center = position;
		m_origin = position;
		m_radius = radius;
	}

	int getPointCount() const override { return INFINITY; }
	Point2 getCenter() const override { return m_center;  }
	Bounds getBoundingRectangle() const override
	{
		return Bounds(
			Point2(m_origin.x, m_origin.y),
			Point2(m_origin.x+m_radius*2, m_origin.y),
			Point2(m_origin.x+m_radius*2, m_origin.y+m_radius*2),
			Point2(m_origin.x, m_origin.y+m_radius*2)
		);
	}

	void updateProperties() override
	{
		m_center.x = m_origin.x + m_radius;
		m_center.y = m_origin.y + m_radius;
	}

	double getRadius() const { return m_radius; }
};


// moving
// scaling,
// rotation

#include<cmath>

#include "point2.hpp"

class Transformation
{
private:

	Point2 m_position = {0, 0};
	Point2 m_origin = {0, 0};
	double m_rotation = 0;
	double m_scale = 0;
	bool m_need_update = false;


public:
	Transformation(const Point2& position)
	{
		m_position = position;
		m_origin = m_position;
	}

	Transformation(double ax, double ay)
	{
		m_position.x = ax;
		m_position.y = ay;
		m_origin = m_position;
	}

	void set_origin(const Point2& p)
	{
		m_origin = p;
		m_need_update = true;
	}
	void set_position(const Point2& p)
	{
		m_position = p;
		m_need_update = true;
	}

	void set_rotation(double rangle)
	{
		m_rotation = fmod(rangle, 360);
		if(m_rotation) m_rotation += 360;
		m_need_update = true;
	}

	void move(Point2 p)
	{
		p.x += m_position.x;
		p.y += m_position.y;
		set_position(p);
	}
	void rotate(double angle)
	{
		set_rotation(m_rotation + angle);
	}


};
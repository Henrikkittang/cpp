#pragma once
#include<iostream>
#include<cmath>

#include "point2.hpp"
#include "vector2.hpp"


struct Line_seg2
{
    Point2 p1, p2;

    Line_seg2(const Point2& a_p1, const Point2& a_p2)
        :p1(a_p1), p2(a_p2)
    {}

    void move(const double xoff, const double yoff)
    {
        p1.x += xoff; p2.x += xoff;
        p1.y += yoff; p2.y += yoff;
    }

    Point2 intersection_point(const Line_seg2& line2)
    {
		Vector2 b = make_vector2(p1, p2);
		Vector2 d = make_vector2(line2.p1, line2.p2);
        double b_dot_d_perp = b.x * d.y - b.y * d.x;

        if(b_dot_d_perp == 0) return Point2(0, 0);
		Vector2 c = make_vector2(p1, line2.p1);

        double t = (c.x * d.y - c.y * d.x) / b_dot_d_perp;
        if(t < 0 || t > 1) return Point2(0, 0);

        double u = (c.x * b.y - c.y * b.x) / b_dot_d_perp;
        if(u < 0 || u > 1) return Point2(0, 0);

        return Point2(p1.x+t*b.x, p1.y+t*b.y);
    }

    double distToPoint(const Point2& p)
    {
		Vector2 vect = make_vector2(p1, p2);
		double t = ((p.x - p1.x) * vect.x + (p.y-p1.y)*vect.y) / (pow(vect.x, 2) + pow(vect.y, 2));

		if(t > 1) t = 1;
		else if (t < 0) t = 0;

		Point2 temp(p1.x + t*vect.x, p1.y + t*(p2.y - p1.y));
		return make_vector2(p, temp).length();
	}
};


/*-------------------------------------*/

struct Line2
{
	Point2 p;
	Vector2 dir;
	Line2(const Point2& ap, const Vector2& avect)
		:p(ap), dir(avect)
	{}

	Point2 get_t(const double& t_arg)
	{
		return Point2( p.x + t_arg*dir.x, p.y + t_arg*dir.y);
	}

	Point2 intersection_point(const Line2& line)
	{
		if(dir.isParallel(line.dir)) return Point2(0, 0);

	}

};


/*-------------------------------------*/

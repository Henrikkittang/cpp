#pragma once
#include<iostream>
#include<cmath>

struct Point2
{
    double x, y;
    Point2(double ax=0, double ay=0)
        :x(ax), y(ay)
    {}

	bool operator==(const Point2& p) const
	{
		return (x == p.x && y == p.y);
	}

	bool operator!=(const Point2& p) const
	{
		return (x != p.x || y != p.y);
	}

    void move(const double xoff, const double yoff)
    {
        x += xoff;
        y += yoff;
    }

    double distToPoint(const Point2& p) const
    {
        return sqrt(pow(x-p.x, 2) + pow(y-p.y, 2));
    }
};

std::ostream& operator<<(std::ostream& out, const Point2& point)
{
    // Makes point printable
    out << "(" << point.x << ", " << point.y << ")";
    return out;
}

/*-------------------------------------*/

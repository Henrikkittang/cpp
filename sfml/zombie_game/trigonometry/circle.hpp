#pragma once
#include<iostream>
#include<cmath>

#include "point2.hpp"
#include "vector2.hpp"


struct Circle
{
    Point2 center;
    double radius;

    Circle(const Point2& p=Point2(0, 0), const double r=0)
        : center(p), radius(r)
    {}

    void move(const double xoff, const double yoff)
    {
        center.x += xoff;
        center.y += yoff;
    }

    double area()
    {
        return PI * pow(radius, 2);
    }

    double circumference()
    {
        return 2 * PI * radius;
    }

    bool pointInsideCircle(const Point2& p)
    {
        Vector2 vect = make_vector2(p, center);
        return vect.length() < radius;
    }
};

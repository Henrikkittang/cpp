#pragma once
#include<iostream>
#include<cmath>
#include "point2.hpp"

#define PI 3.141592653589793238463

class Vector2{
public:
    double x, y;

    Vector2(double x=0, double y=0)
        : x(x), y(y){}

    Vector2 operator+(const Vector2& otherVector2) const
    {
        return Vector2(x + otherVector2.x, y + otherVector2.y);
    }

    Vector2 operator-(const Vector2& otherVector2) const
    {
        return Vector2(x - otherVector2.x, y - otherVector2.y);
    }

    double operator*(const Vector2& otherVector2) const
    {
        return x * otherVector2.x + y * otherVector2.y;
    }

    Vector2 operator*(const double a_scalar) const
    {
        return Vector2(x*a_scalar, y*a_scalar);
    }

    Vector2 operator/(const double a_scalar) const
    {
        return Vector2(x/a_scalar, y/a_scalar);
    }

	bool operator==(const Vector2& a_vect) const
	{
		return (x == a_vect.x && y == a_vect.y);
	}

	bool operator!=(const Vector2& a_vect) const
	{
		return (x != a_vect.x || y != a_vect.y);
	}

    double angleR(Vector2& otherVector2) const
    {
        double scalar = x * otherVector2.x + y * otherVector2.y;
        double lenProd = length() * otherVector2.length();
        double angle = acos(scalar/lenProd);
        return angle;
    }
    double angleD(Vector2& otherVector2) const
    {
        double angleDegrees = angleR(otherVector2) * (180 / 3.141592653589793238463);
        return angleDegrees;
    }

    double length() const
    {
        return sqrt(pow(x, 2) + pow(y, 2));
    }

    void normalize()
    {
        double len = length();
        x /= len;
        y /= len;
    }

    void rotateR(double a_radians)
    {
        double temp_x = x*cos(a_radians) - y*sin(a_radians);
        double temp_y = x*sin(a_radians) + y*cos(a_radians);
        x = temp_x;
        y = temp_y;
    }

    void rotateD(double a_angle)
    {
        double radians = 2*PI * (a_angle / 360);
        rotateR(radians);
    }

	bool isParallel(const Vector2& vect) const
	{
		Vector2 cop1 = Vector2(x, y);
		Vector2 cop2 = vect;
		cop1.normalize();
		cop2.normalize();

		return (cop1 == cop2);
	}
};

std::ostream& operator<<(std::ostream& out, const Vector2& vect)
{
    // Makes vector2 printable
    out << "[" << vect.x << ", " << vect.y <<  "]";
    return out;
}

Vector2 make_vector2(const Point2& p1, const Point2& p2)
{
    return Vector2( p2.x - p1.x, p2.y - p1.y );
}




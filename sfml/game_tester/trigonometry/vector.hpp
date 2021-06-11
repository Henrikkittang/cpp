#pragma once
#include<cmath>
#include<array>

#define PI 3.141592653589793238463

namespace trig
{

    class Vector{
    public:
        float x, y;

        Vector()
            : x(0), y(0){}

        Vector(float x, float y)
            : x(x), y(y){}

        Vector(std::array<int, 2> pos)
            : x(pos[0]), y(pos[1]){}

        Vector operator+(const Vector& other) const
        {
            return Vector(x + other.x, y + other.y);
        }

        Vector operator-(const Vector& other) const
        {
            return Vector(x - other.x, y - other.y);
        }

        float operator*(const Vector& other) const
        {
            return x * other.x + y * other.y;
        }

        Vector operator*(float scalar) const
        {
            return Vector(x* scalar, y* scalar);
        }

        Vector operator/(float  scalar) const
        {
            return Vector(x/ scalar, y/ scalar);
        }

        bool operator==(const Vector& other) const
        {
            return (x == other.x && y == other.y);
        }

        bool operator!=(const Vector& other) const
        {
            return (x != other.x || y != other.y);
        }

        float angleR(const Vector& other) const
        {
            float scalar = x * other.x + y * other.y;
            float lenProd = length() * other.length();
            float angle = acos(scalar/lenProd);
            return angle;
        }
        float angleD(const Vector& other) const
        {
            float angleDegrees = angleR(other) * (180 / 3.141592653589793238463);
            return angleDegrees;
        }

        float length() const
        {
            return sqrt(pow(x, 2) + pow(y, 2));
        }

        void normalize()
        {
            float len = length();
            x /= len;
            y /= len;
        }

        Vector getNormalized() const
        {
            float len = length();
            return Vector(x/len, y/len);
        }

        void rotateR(float radians)
        {
            float temp_x = x*cos(radians) - y*sin(radians);
            float temp_y = x*sin(radians) + y*cos(radians);
            x = temp_x;
            y = temp_y;
        }

        void rotateD(float degrees)
        {
            float radians = 2*PI * (degrees / 360);
            rotateR(radians);
        }

        bool isParallel(const Vector& other) const
        {
            auto v1 = this->getNormalized();
            auto v2 = other.getNormalized();
            return v1 == v2;
        }
    };

#ifdef _GLIBCXX_OSTREAM

    std::ostream& operator<<(std::ostream& out, const Vector& vect)
    {
        // Makes vector printable
        out << "[" << vect.x << ", " << vect.y <<  "]";
        return out;
    }

#endif

    Vector make_vector(const std::array<int, 2>& p1, const std::array<int, 2>& p2)
    {
        return Vector( p2[0] - p1[0], p2[1] - p1[1] );
    }

    Vector make_vector(const Vector& p1, const Vector& p2)
    {
        return Vector( p2.x - p1.x, p2.y - p1.y );
    }

    Vector make_vector(float x1, float y1, float x2, float y2)
    {
        return Vector( x2 - x1, y2 - y1 );
    }
}



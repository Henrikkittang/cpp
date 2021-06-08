#pragma once
#include<cmath>

#define PI 3.141592653589793238463


namespace math
{
    struct Vector2{
        float x, y;

        Vector2(float x=0, float y=0)
            : x(x), y(y){}

        Vector2 operator+(const Vector2& otherVector2)
        {
            return Vector2(x + otherVector2.x, y + otherVector2.y);
        }

        Vector2 operator-(const Vector2& otherVector2)
        {
            return Vector2(x - otherVector2.x, y - otherVector2.y);
        }

        float operator*(const Vector2& otherVector2)
        {
            return x * otherVector2.x + y * otherVector2.y;
        }

        Vector2 operator*(const float a_scalar)
        {
            return Vector2(x*a_scalar, y*a_scalar);
        }

        Vector2 operator/(const float a_scalar)
        {
            return Vector2(x/a_scalar, y/a_scalar);
        }

        bool operator==(const Vector2& a_vect)
        {
            return (x == a_vect.x && y == a_vect.y);
        }

        bool operator!=(const Vector2& a_vect)
        {
            return (x != a_vect.x || y != a_vect.y);
        }

        float angleR(Vector2& otherVector2)
        {
            float scalar = x * otherVector2.x + y * otherVector2.y;
            float lenProd = length() * otherVector2.length();
            float angle = acosf(scalar/lenProd);
            return angle;
        }
        float angleD(Vector2& otherVector2)
        {
            float angleDegrees = angleR(otherVector2) * (180 / 3.141592653589793238463);
            return angleDegrees;
        }

        float length()
        {
            return sqrtf(powf(x, 2) + powf(y, 2));
        }

        void normalize()
        {
            float len = length();
            x /= len;
            y /= len;
        }

        void rotateR(float a_radians)
        {
            float temp_x = x*cos(a_radians) - y*sin(a_radians);
            float temp_y = x*sin(a_radians) + y*cos(a_radians);
            x = temp_x;
            y = temp_y;
        }

        void rotateD(float angle)
        {
            float radians = 2*PI * (angle / 360);
            rotateR(radians);
        }

        bool isParallel(const Vector2& vect)
        {
            Vector2 cop1 = Vector2(x, y);
            Vector2 cop2 = vect;
            cop1.normalize();
            cop2.normalize();

            return (cop1 == cop2);
        }
    };


// Might have to be moved outside namespace
#ifdef _GLIBCXX_OSTREAM
    std::ostream& operator<<(std::ostream& out, const Vector2& vect)
    {
        // Makes vector2 printable
        out << "[" << vect.x << ", " << vect.y <<  "]";
        return out;
    }    
#endif

    Vector2 make_vector(int x1, int y1, int x2, int y2)
    {
        return Vector2(x2 - x1, y2 - y1);
    }

    Vector2 make_vector(const Vector2& v1, const Vector2& v2)
    {
        return Vector2(v2.x - v1.x, v2.y - v1.y);
    }

    Vector2 make_vector(std::array<int, 2> p1, std::array<int, 2> p2)
    {
        return Vector2(p2[0] - p1[0], p2[1] - p1[1]);
    }
}








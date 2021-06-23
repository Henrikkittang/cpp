#pragma once
#include<cmath>

#define PI 3.141592653589793238463


namespace trig
{
    template<typename T>
    struct Vector2{
        T x, y;

        Vector2(T x=0, T y=0)
            : x(x), y(y){}

        operator Vector2<int>() const { return Vector2<int>(int(x), int(y)); }    
        operator Vector2<float>() const { return Vector2<float>(float(x), float(y)); }    
        operator Vector2<double>() const { return Vector2<double>(double(x), double(y)); }    


        Vector2 operator+(const Vector2& otherVector2) const
        {
            return Vector2(x + otherVector2.x, y + otherVector2.y);
        }

        Vector2 operator-(const Vector2& otherVector2) const
        {
            return Vector2(x - otherVector2.x, y - otherVector2.y);
        }

        T operator*(const Vector2& otherVector2) const
        {
            return x * otherVector2.x + y * otherVector2.y;
        }

        Vector2 operator*(T scalar) const
        {
            return Vector2(x*scalar, y*scalar);
        }

        Vector2 operator/(T scalar) const
        {
            return Vector2(x/scalar, y/scalar);
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
            double angle = acosf(scalar/lenProd);
            return angle;
        }
        double angleD(Vector2& otherVector2) const
        {
            double angleDegrees = angleR(otherVector2) * (180 / PI);
            return angleDegrees;
        }

        double length() const
        {
            return sqrtf(powf(x, 2) + powf(y, 2));
        }

        void normalize()
        {
            double len = length();
            x /= len;
            y /= len;
        }

        void rotateR(T a_radians)
        {
            double temp_x = x*cos(a_radians) - y*sin(a_radians);
            double temp_y = x*sin(a_radians) + y*cos(a_radians);
            x = (T)temp_x;
            y = (T)temp_y;
        }

        void rotateD(T angle)
        {
            double radians = 2*PI * (angle / 360);
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

    using Vector2i = Vector2<int>;
    using Vector2f = Vector2<float>;
    using Vector2d = Vector2<double>;


#ifdef _GLIBCXX_OSTREAM
    std::ostream& operator<<(std::ostream& out, const Vector2f& vect)
    {
        // Makes vector2 printable
        out << "[" << vect.x << ", " << vect.y <<  "]";
        return out;
    }    
    std::ostream& operator<<(std::ostream& out, const Vector2i& vect)
    {
        // Makes vector2 printable
        out << "[" << vect.x << ", " << vect.y <<  "]";
        return out;
    }  
    std::ostream& operator<<(std::ostream& out, const Vector2d& vect)
    {
        // Makes vector2 printable
        out << "[" << vect.x << ", " << vect.y <<  "]";
        return out;
    }    
#endif

    template<typename T>
    Vector2<T> make_vector(T x1, T y1, T x2, T y2)
    {
        return Vector2<T>(x2 - x1, y2 - y1);
    }

    template<typename T>
    Vector2<T> make_vector(const Vector2<T>& v1, const Vector2<T>& v2)
    {
        return Vector2<T>(v2.x - v1.x, v2.y - v1.y);
    }

    template<typename T>
    Vector2<T> make_vector(std::array<T, 2> p1, std::array<T, 2> p2)
    {
        return Vector2<T>(p2[0] - p1[0], p2[1] - p1[1]);
    }    
}

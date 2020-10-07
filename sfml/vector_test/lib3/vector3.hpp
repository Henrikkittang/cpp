#include<iostream>
#include<cmath>

#define PI 3.141592653589793238463

struct Point3{
    double x, y, z;
    Point3(double x, double y, double z) :x(x), y(y), z(z)   {}
};

std::ostream& operator<<(std::ostream& out, const Point3& point)
{
    // Makes point printable
    out << "(" << point.x << ", " << point.y << ", " << point.z << ")";  
    return out;
}

class Vector3{
public:
    double x, y, z;

    Vector3(double x=0, double y=0, double z=0)
        :x(x), y(y), z(z) {}

    Vector3 operator+(const Vector3& otherVect)
    {
        // Adding two vectors
        return Vector3(x + otherVect.x, y + otherVect.y, z + otherVect.z);
    }

    Vector3 operator-(const Vector3& otherVect)
    {
        // Adding negativ vector, aka subtracting
        return Vector3(x - otherVect.x, y - otherVect.y, z - otherVect.z);
    }

    double operator*(const Vector3& otherVect)
    {
        // Dot product
        return x*otherVect.x + y*otherVect.y + z*otherVect.z;
    }

    Vector3 operator*(const double scalar)
    {
        // Muliplying constnant to make new vector, note arguments order
        return Vector3(x*scalar, y*scalar, z*scalar);
    }

    void operator*=(const double scalar)
    {
        // Multiplying constant to this vector
        x *= scalar; 
        y *= scalar; 
        z *= scalar;
    }
    Vector3 operator%(const Vector3& otherVect)
    {
        // Cross product between to vectors
        return Vector3(
            y*otherVect.z - z*otherVect.y,
            z*otherVect.x - x*otherVect.z,
            x*otherVect.z - z*otherVect.x
        );
    }
    double length()
    {
        // returns lenght of vector
        return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));
    }

    double angleR(Vector3& otherVect)
    {
        // returns the angle between to vectors in radians
        double dotProduct = x*otherVect.x + y*otherVect.y + z*otherVect.z;
        double lenProduct = length() * otherVect.length();
        return acos(dotProduct / lenProduct);
    }
    double angleD(Vector3& otherVect)
    {
        // returns the angle between to vectors in degrees
        return angleR(otherVect) * (180 / PI);
    }

    void normalize()
    {
        // normalizes the vector to a length between 0 and 1
        double len = length();
        x /= len;
        y /= len;
        z /= len;
    }
};

std::ostream& operator<<(std::ostream& out, const Vector3& vect)
{
    // Makes vector3 printable
    out << "[" << vect.x << ", " << vect.y << ", " << vect.z << "]";  
    return out;
}

Vector3 makeVector3(Point3 p1, Point3 p2)
{
    return Vector3(p2.x - p1.x, p2.y - p1.y, p2.z - p2.z);
}


class Line3{
private:
    Point3 m_const;
    Vector3 m_rvect;

public:
    Line3(const Point3& point, const Vector3& vect)
        :m_const(point), m_rvect(vect) {}

    Point3 getPoint(double t)
    {
        return Point3(
            m_const.x + m_rvect.x*t,
            m_const.y + m_rvect.y*t,
            m_const.z + m_rvect.z*t
        );
    }
    double distToPoint(const Point3& point)
    {
        Vector3 PQvect = makeVector3(m_const, point);
        return (PQvect % m_rvect).length() / m_rvect.length();
    }
};


class Triangle3
{
private:
    Point3 m_p1;
    Point3 m_p2;
    Point3 m_p3;

public:
    Triangle3(const Point3& A, const Point3& B, const Point3& C)
        : m_p1(A), m_p2(B), m_p3(C)
    {}

    Triangle3(
        const double&  x1, const double&  y1, const double&  z1,
        const double&  x2, const double&  y2, const double&  z2,
        const double&  x3, const double&  y3, const double&  z3)
        : m_p1(Point3(x1, y1, z1)), m_p2(Point3(x2, y2, z2)),  m_p3(Point3(x3, y3, z3))
    {}

    double area()
    {
        // returns the surface area of the triangle
        Vector3 AB = makeVector3(m_p1, m_p2);
        Vector3 AC = makeVector3(m_p1, m_p3);
        Vector3 normal_vect = AB % AC;
        return normal_vect.length() / 2;
    }
};



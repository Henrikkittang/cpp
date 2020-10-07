#include<iostream>
#include<cmath>

struct Point3{
    double x, y, z;
    Point3(double x, double y, double z)    :x(x), y(y), z(z)   {}
};

std::ostream& operator<<(std::ostream& out, const Point3& point){
    // Makes point printable
    out << "(" << point.x << ", " << point.y << ", " << point.z << ")";  
    return out;
}

class Vector3{
private:
public:
    double x, y, z;

    Vector3(double x=0, double y=0, double z=0)
        :x(x), y(y), z(z) {}

    Vector3 operator+(const Vector3& otherVect){
        // Adding two vectors
        return Vector3(x + otherVect.x, y + otherVect.y, z + otherVect.z);
    }
    Vector3 operator-(const Vector3& otherVect){
        // Adding negativ vector, aka subtracting
        return Vector3(x - otherVect.x, y - otherVect.y, z - otherVect.z);
    }
    double operator*(const Vector3& otherVect){
        // Dot product
        return x*otherVect.x + y*otherVect.y + z*otherVect.z;
    }
    void operator*=(const double scalar){
        // Multiplying constant to this vector
        x *= scalar; 
        y *= scalar; 
        z *= scalar;
    }
    Vector3 operator%(const Vector3& otherVect){
        // Cross product 
        return Vector3(
            y*otherVect.z - z*otherVect.y,
            z*otherVect.x - x*otherVect.z,
            x*otherVect.z - z*otherVect.x
        );
    }
    double length(){
        // returns lenght of vector
        return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));
    }

    double angleR(Vector3& otherVect){
        double dotProduct = x*otherVect.x + y*otherVect.y + z*otherVect.z;
        double lenProduct = length() * otherVect.length();
        return acos(dotProduct / lenProduct);
    }
    double angleD(Vector3& otherVect){
        return angleR(otherVect) * (180 / 3.141592653589793238463);
    }
};

std::ostream& operator<<(std::ostream& out, const Vector3& vect){
    // Makes vector printable
    out << "[" << vect.x << ", " << vect.y << ", " << vect.z << "]";  
    return out;
}

Vector3 operator*(const Vector3& vect, const double scalar){
    // Muliplying constnant to make new vector, note arguments order
    return Vector3(vect.x*scalar, vect.y*scalar, vect.z*scalar);
}

Vector3 operator*(const double scalar, const Vector3& vect){
    // Muliplying constnant to make new vector, note arguments order
    return Vector3(vect.x*scalar, vect.y*scalar, vect.z*scalar);
}

Vector3 makeVector3(Point3 p1, Point3 p2){
    return Vector3(p2.x - p1.x, p2.y - p1.y, p2.z - p2.z);
}


class Line{
private:
    Point3 m_const;
    Vector3 m_rvect;

public:
    Line(const Point3& point, const Vector3& vect)
        :m_const(point), m_rvect(vect) {}

    Point3 getPoint(double t){
        return Point3(
            m_const.x + m_rvect.x*t,
            m_const.y + m_rvect.y*t,
            m_const.z + m_rvect.z*t
        );
    }
    double distToPoint(const Point3& point){
        Vector3 PQvect = makeVector3(m_const, point);
        return (PQvect % m_rvect).length() / m_rvect.length();
    }
};


class Triangle{
private:
    Vector3 m_AB;
    Vector3 m_AC;
    Vector3 m_BC;
    Vector3 m_nVect;

public:
    Triangle(const Point3& A, const Point3& B, const Point3& C){
        m_AB = makeVector3(A, B);
        m_AC = makeVector3(A, C);
        m_BC = makeVector3(B, C);

        m_nVect = m_AB % m_AC;
    }

    double areal(){
        return m_nVect.length() / 2;
    }
};

int main(){
    Vector3 vect(4, 3, 1);
    vect *= 3;
    std::cout << vect << "\n";
}





#pragma once
#include<iostream>
#include<cmath>

#define PI 3.141592653589793238463

template<typename T>
class Vector2{
public:
    T x;
    T y;
    Vector2(T x, T y): x(x), y(y){}

    Vector2 operator+(const Vector2& otherVector2){
        return Vector2(x + otherVector2.x, y + otherVector2.y);
    }

    Vector2 operator-(const Vector2& otherVector2){
        return Vector2(x - otherVector2.x, y - otherVector2.y);
    }

    T operator*(const Vector2& otherVector2){
        return x * otherVector2.x + y * otherVector2.y;
    }

    void normalise(){
		float len = length();
		x /= len;
        y /= len;
	}

    void extend(T scalar){
        x *= scalar;
        y *= scalar;
    }

    float angleR(Vector2& otherVector2){
        T scalar = x * otherVector2.x + y * otherVector2.y;
        T lenProd = length() * otherVector2.length();
        return acos(scalar/lenProd);
    }

    float angleD(Vector2& otherVector2){
        return angleR(otherVector2) * (180 / PI);
    }

    float length(){
        return sqrt(pow(x, 2) + pow(y, 2));
    }

    void print(){
        std::cout << x << ", " << y << "\n";
    }
};


Vector2<float> offset_angle(Vector2<float>& vect, float angle_offset)
{
    float alpha = angle_offset * (180 / 3.141592653589793238463);
    return Vector2<float>(
        vect.x*cos(alpha) + vect.y*sin(alpha),
        -vect.x*sin(alpha) + vect.y*cos(alpha)
    );
}





#include<iostream>
#include<cmath>


template<typename T>
class Vector2{
public:
    T x;
    T y;
    Vector2(T x, T y): x(x), y(y){}

    Vector2 operator+(const Vector2& otherVector2){
        Vector2 newVector2 = Vector2(x + otherVector2.x, y + otherVector2.y);
        return newVector2;
    }

    Vector2 operator-(const Vector2& otherVector2){
        Vector2 newVector2 = Vector2(x - otherVector2.x, y - otherVector2.y);
        return newVector2;
    }

    T operator*(const Vector2& otherVector2){
        return x * otherVector2.x + y * otherVector2.y;
    }

    double angleR(Vector2& otherVector2){
        T scalar = x * otherVector2.x + y * otherVector2.y;
        T lenProd = length() * otherVector2.length();
        T angle = acos(scalar/lenProd);
        return angle;
    }
    double angleD(Vector2& otherVector2){
        T angleDegrees = angleR(otherVector2) * (180 / 3.141592653589793238463);
        return angleDegrees;
    }

    double length(){
        return sqrt(pow(x, 2) + pow(y, 2));
    }

    void print(){
        std::cout << x << ", " << y << "\n";
    }
};


int main(){

    Vector2<int> v1 =  Vector2<int>(5, 2);
    Vector2<int> v2 = Vector2<int>(7, 3);

    Vector2<int> v3 = v1 + v2;
    v3.print();

    int scalar = v1 * v2;
    std::cout << v3.length() << "\n";
}





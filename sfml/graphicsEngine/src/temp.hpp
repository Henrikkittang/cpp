#pragma once
#include<iostream>
#include<cmath>
#include<fstream>
#include <sstream>
#include<vector>

#include "SFML/Graphics.hpp"


class vec3d{
public:
    float x = 0;
    float y = 0;
    float z = 0;
    float w = 1;

    vec3d(const float& tx=0.0f, const float& ty=0.0f, const float& tz=0.0f){
        x = tx;
        y = ty;
        z = tz;
    }

    vec3d operator+(const vec3d& otherVect){
        // Adding two vectors
        return vec3d(x + otherVect.x, y + otherVect.y, z + otherVect.z);
    }
    vec3d operator-(const vec3d& otherVect){
        // Adding negativ vector, aka subtracting
        return vec3d(x - otherVect.x, y - otherVect.y, z - otherVect.z);
    }
    float operator*(const vec3d& otherVect){
        // Dot product
        return x*otherVect.x + y*otherVect.y + z*otherVect.z;
    }
    void operator*=(const float& scalar){
        // Multiplying constant to this vector
        x *= scalar;
        y *= scalar;
        z *= scalar;
    }
    void operator/=(const float& scalar){
        // Multiplying constant to this vector
        x /= scalar;
        y /= scalar;
        z /= scalar;
    }

    vec3d operator%(const vec3d& otherVect){
        // Cross product
        vec3d tempVect;
        tempVect.x = y*otherVect.z - z*otherVect.y;
        tempVect.y = z*otherVect.x - x*otherVect.z;
        tempVect.z = x*otherVect.y - y*otherVect.x;

        return tempVect;
    }
    float length(){
        // returns lenght of vector
        return sqrtf(powf(x, 2) + powf(y, 2) + powf(z, 2));
    }

	vec3d normalise(){
		float len = length();
		return vec3d(x / len, y / len, z / len);
	}

    float angleR(vec3d& otherVect){
        float dotProduct = x*otherVect.x + y*otherVect.y + z*otherVect.z;
        float lenProduct = length() * otherVect.length();
        return acos(dotProduct / lenProduct);
    }
    float angleD(vec3d& otherVect){
        return angleR(otherVect) * (180 / 3.141592653589793238463);
    }
};

std::ostream& operator<<(std::ostream& out, const vec3d& vect){
    // Makes vector printable
    out << "[" << vect.x << ", " << vect.y << ", " << vect.z << "]";
    return out;
}

vec3d operator*(const vec3d& vect, const float& scalar){
    // Muliplying constnant to make new vector, note arguments order
    return vec3d(vect.x*scalar, vect.y*scalar, vect.z*scalar);
}

vec3d operator*(const float& scalar, const vec3d& vect){
    // Muliplying constnant to make new vector, note arguments order
    return vec3d(vect.x*scalar, vect.y*scalar, vect.z*scalar);
}

vec3d operator/(const vec3d& vect, const float& scalar){
    // Dividing constnant to make new vector, note arguments order
    return vec3d(vect.x/scalar, vect.y/scalar, vect.z/scalar);
}

vec3d operator/(const float& scalar, const vec3d& vect){
    // Dividing constnant to make new vector, note arguments order
    return vec3d(vect.x/scalar, vect.y/scalar, vect.z/scalar);
}

struct triangle {
	vec3d p[3];
	float shading;


	void DrawTriangle(sf::RenderWindow* wn){
		sf::Vertex line0[] = {
			sf::Vertex(sf::Vector2(p[0].x, p[0].y)),
			sf::Vertex(sf::Vector2(p[1].x, p[1].y)),
		};
		sf::Vertex line1[] = {
			sf::Vertex(sf::Vector2(p[1].x, p[1].y)),
			sf::Vertex(sf::Vector2(p[2].x, p[2].y)),
		};
		sf::Vertex line2[] = {
			sf::Vertex(sf::Vector2(p[2].x, p[2].y)),
			sf::Vertex(sf::Vector2(p[0].x, p[0].y)),
		};

		wn->draw(line0, 2, sf::Lines);
		wn->draw(line1, 2, sf::Lines);
		wn->draw(line2, 2, sf::Lines);
	}

	void FillTriangle(sf::RenderWindow* wn){
		auto color = sf::Color(255*shading, 255*shading, 255*shading);
		sf::Vertex vertices[] =
		{
			sf::Vertex(sf::Vector2f(p[0].x, p[0].y), color, sf::Vector2f(p[1].x, p[1].y)),
			sf::Vertex(sf::Vector2f(p[1].x, p[1].y), color, sf::Vector2f(p[2].x, p[2].y)),
			sf::Vertex(sf::Vector2f(p[2].x, p[2].y), color, sf::Vector2f(p[0].y, p[0].y))
		};
		wn->draw(vertices, 3, sf::Triangles);
	}
};


struct mesh {
	std::vector<triangle> tris;

	bool LoadFromObjectFile(const std::string& sFilename){

		std::fstream file;    // initilize file-handler class
    	file.open(sFilename, std::ios::in);  // opens file in read mode

		if(!file.is_open()) return false;

		// Local cache of vertecies
		std::vector<vec3d> verts;

		while(!file.eof()){
			char line[128];
			file.getline(line, 128);

			std::stringstream stringStream;
			stringStream << line;

			char junk;

			if(line[0] == 'v'){
				vec3d vect;
				stringStream >> junk >> vect.x >> vect.y >> vect.z;
				verts.push_back(vect);
			}

			else if(line[0] == 'f'){
				int faces[3];
				stringStream >> junk >> faces[0] >> faces[1] >> faces[2];
				tris.push_back({ verts[faces[0] - 1], verts[faces[1] - 1], verts[faces[2] - 1], 0});
			}
		}

		return true;
	}
};

struct mat4x4 {
	float m[4][4] = { 0 };

	void MakeIdentity()
	{
		m[0][0] = 1.0f;
		m[1][1] = 1.0f;
		m[2][2] = 1.0f;
		m[3][3] = 1.0f;
	}

	void MakeRotationX(float fAngleRad)
	{
		m[0][0] = 1.0f;
		m[1][1] = cosf(fAngleRad);
		m[1][2] = sinf(fAngleRad);
		m[2][1] = -sinf(fAngleRad);
		m[2][2] = cosf(fAngleRad);
		m[3][3] = 1.0f;
	}

	void MakeRotationY(float fAngleRad)
	{
		m[0][2] = sinf(fAngleRad);
		m[0][0] = cosf(fAngleRad);
		m[2][0] = -sinf(fAngleRad);
		m[1][1] = 1.0f;
		m[2][2] = cosf(fAngleRad);
		m[3][3] = 1.0f;
	}

	void MakeRotationZ(float fAngleRad)
	{
		m[0][0] = cosf(fAngleRad);
		m[0][1] = sinf(fAngleRad);
		m[1][0] = -sinf(fAngleRad);
		m[1][1] = cosf(fAngleRad);
		m[2][2] = 1.0f;
		m[3][3] = 1.0f;
	}

	void MakeTranslation(float x, float y, float z)
	{
		m[0][0] = 1.0f;
		m[1][1] = 1.0f;
		m[2][2] = 1.0f;
		m[3][3] = 1.0f;
		m[3][0] = x;
		m[3][1] = y;
		m[3][2] = z;
	}

	void MakeProjection(float fFovDegrees, float fAspectRatio, float fNear, float fFar)
	{
		float fFovRad = 1.0f / tanf(fFovDegrees * 0.5f / 180.0f * 3.14159f);
		m[0][0] = fAspectRatio * fFovRad;
		m[1][1] = fFovRad;
		m[2][2] = fFar / (fFar - fNear);
		m[3][2] = (-fFar * fNear) / (fFar - fNear);
		m[2][3] = 1.0f;
		m[3][3] = 0.0f;
	}

	void QuickInverse() // Only for Rotation/Translation Matrices
	{
		m[0][0] = m[0][0]; m[0][1] = m[1][0]; m[0][2] = m[2][0]; m[0][3] = 0.0f;
		m[1][0] = m[0][1]; m[1][1] = m[1][1]; m[1][2] = m[2][1]; m[1][3] = 0.0f;
		m[2][0] = m[0][2]; m[2][1] = m[1][2]; m[2][2] = m[2][2]; m[2][3] = 0.0f;
		m[3][0] = -(m[3][0] * m[0][0] + m[3][1] * m[1][0] + m[3][2] * m[2][0]);
		m[3][1] = -(m[3][0] * m[0][1] + m[3][1] * m[1][1] + m[3][2] * m[2][1]);
		m[3][2] = -(m[3][0] * m[0][2] + m[3][1] * m[1][2] + m[3][2] * m[2][2]);
		m[3][3] = 1.0f;
	}

	void PointAt(vec3d &pos, vec3d &target, vec3d &up)
	{
		// Calculate new forward direction
		vec3d newForward = target - pos;
		newForward = newForward.normalise();

		// Calculate new Up direction
		vec3d temp = (up * newForward) * newForward;
		vec3d newUp = up - temp;
		newUp = newUp.normalise();

		// New Right direction is easy, its just cross product
		vec3d newRight = newUp % newForward;

		// Construct Dimensioning and Translation Matrix
		m[0][0] = newRight.x;	m[0][1] = newRight.y;	m[0][2] = newRight.z;	m[0][3] = 0.0f;
		m[1][0] = newUp.x;		m[1][1] = newUp.y;		m[1][2] = newUp.z;		m[1][3] = 0.0f;
		m[2][0] = newForward.x;	m[2][1] = newForward.y;	m[2][2] = newForward.z;	m[2][3] = 0.0f;
		m[3][0] = pos.x;		m[3][1] = pos.y;		m[3][2] = pos.z;		m[3][3] = 1.0f;

	}
};

namespace matrix{
	vec3d MultiplyVector(mat4x4 &m, vec3d &i)
	{
		vec3d v;
		v.x = i.x * m.m[0][0] + i.y * m.m[1][0] + i.z * m.m[2][0] + i.w * m.m[3][0];
		v.y = i.x * m.m[0][1] + i.y * m.m[1][1] + i.z * m.m[2][1] + i.w * m.m[3][1];
		v.z = i.x * m.m[0][2] + i.y * m.m[1][2] + i.z * m.m[2][2] + i.w * m.m[3][2];
		v.w = i.x * m.m[0][3] + i.y * m.m[1][3] + i.z * m.m[2][3] + i.w * m.m[3][3];
		return v;
	}

	mat4x4 MultiplyMatrix(mat4x4 &m1, mat4x4 &m2)
	{
		mat4x4 matrix;
		for (int c = 0; c < 4; c++)
			for (int r = 0; r < 4; r++)
				matrix.m[r][c] = m1.m[r][0] * m2.m[0][c] + m1.m[r][1] * m2.m[1][c] + m1.m[r][2] * m2.m[2][c] + m1.m[r][3] * m2.m[3][c];
		return matrix;
	}
}

// matrix/vector multiplication
vec3d operator*(mat4x4 &m, vec3d &i){
	return matrix::MultiplyVector(m, i);
}
vec3d operator*(vec3d &i, mat4x4 &m){
	return matrix::MultiplyVector(m, i);
}

// matrix/matrix multiplication
mat4x4 operator*(mat4x4 &m1, mat4x4 m2){
	return matrix::MultiplyMatrix(m1, m2);
}




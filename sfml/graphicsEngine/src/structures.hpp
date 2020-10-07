#pragma once
#include<iostream>
#include<cmath>
#include<fstream>
#include <sstream>
#include<vector>

#include "SFML/Graphics.hpp"

void DrawTriangle(float& x1, float& y1, float& x2, float& y2, float& x3, float& y3, sf::RenderWindow* wn){
    sf::Vertex line0[] = {
        sf::Vertex(sf::Vector2(x1, y1)),
        sf::Vertex(sf::Vector2(x2, y2)),
    };
    sf::Vertex line1[] = {
        sf::Vertex(sf::Vector2(x2, y2)),
        sf::Vertex(sf::Vector2(x3, y3)),
    };
    sf::Vertex line2[] = {
        sf::Vertex(sf::Vector2(x3, y3)),
        sf::Vertex(sf::Vector2(x1, y1)),
    };

    wn->draw(line0, 2, sf::Lines);
    wn->draw(line1, 2, sf::Lines);
    wn->draw(line2, 2, sf::Lines);
}

void FillTriangle(float& x1, float& y1, float& x2, float& y2, float& x3, float& y3, float& shade, sf::RenderWindow* wn){
    auto color = sf::Color(255*shade, 255*shade, 255*shade);
    sf::Vertex vertices[] =
    {
        sf::Vertex(sf::Vector2f(x1, y1), color, sf::Vector2f(x2, y2)),
        sf::Vertex(sf::Vector2f(x2, y2), color, sf::Vector2f(x3, y3)),
        sf::Vertex(sf::Vector2f(x3, y3), color, sf::Vector2f(x1, y1))
    };
    wn->draw(vertices, 3, sf::Triangles);

}

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

/*vec3d operator*(const vec3d& vect, const float& scalar){
    // Muliplying constnant to make new vector, note arguments order
    return vec3d(vect.x*scalar, vect.y*scalar, vect.z*scalar);
}*/

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

};


struct mesh {
	std::vector<triangle> tris;

	bool LoadFromObjectFile(const std::string& sFilename){

		std::fstream file;    // initilize file-handler class
    	file.open(sFilename, std::ios::in);  // opens file in read mode

		if(!file.is_open()){
			return false;
		}

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
};


vec3d Matrix_MultiplyVector(mat4x4 &m, vec3d &i)
{
    vec3d v;
    v.x = i.x * m.m[0][0] + i.y * m.m[1][0] + i.z * m.m[2][0] + i.w * m.m[3][0];
    v.y = i.x * m.m[0][1] + i.y * m.m[1][1] + i.z * m.m[2][1] + i.w * m.m[3][1];
    v.z = i.x * m.m[0][2] + i.y * m.m[1][2] + i.z * m.m[2][2] + i.w * m.m[3][2];
    v.w = i.x * m.m[0][3] + i.y * m.m[1][3] + i.z * m.m[2][3] + i.w * m.m[3][3];
    return v;
}

mat4x4 Matrix_MakeIdentity()
{
    mat4x4 matrix;
    matrix.m[0][0] = 1.0f;
    matrix.m[1][1] = 1.0f;
    matrix.m[2][2] = 1.0f;
    matrix.m[3][3] = 1.0f;
    return matrix;
}

mat4x4 Matrix_MakeRotationX(float fAngleRad)
{
    mat4x4 matrix;
    matrix.m[0][0] = 1.0f;
    matrix.m[1][1] = cosf(fAngleRad);
    matrix.m[1][2] = sinf(fAngleRad);
    matrix.m[2][1] = -sinf(fAngleRad);
    matrix.m[2][2] = cosf(fAngleRad);
    matrix.m[3][3] = 1.0f;
    return matrix;
}

mat4x4 Matrix_MakeRotationY(float fAngleRad)
{
    mat4x4 matrix;
    matrix.m[0][0] = cosf(fAngleRad);
    matrix.m[0][2] = sinf(fAngleRad);
    matrix.m[2][0] = -sinf(fAngleRad);
    matrix.m[1][1] = 1.0f;
    matrix.m[2][2] = cosf(fAngleRad);
    matrix.m[3][3] = 1.0f;
    return matrix;
}

mat4x4 Matrix_MakeRotationZ(float fAngleRad)
{
    mat4x4 matrix;
    matrix.m[0][0] = cosf(fAngleRad);
    matrix.m[0][1] = sinf(fAngleRad);
    matrix.m[1][0] = -sinf(fAngleRad);
    matrix.m[1][1] = cosf(fAngleRad);
    matrix.m[2][2] = 1.0f;
    matrix.m[3][3] = 1.0f;
    return matrix;
}

mat4x4 Matrix_MakeTranslation(float x, float y, float z)
{
    mat4x4 matrix;
    matrix.m[0][0] = 1.0f;
    matrix.m[1][1] = 1.0f;
    matrix.m[2][2] = 1.0f;
    matrix.m[3][3] = 1.0f;
    matrix.m[3][0] = x;
    matrix.m[3][1] = y;
    matrix.m[3][2] = z;
    return matrix;
}

mat4x4 Matrix_MakeProjection(float fFovDegrees, float fAspectRatio, float fNear, float fFar)
{
    float fFovRad = 1.0f / tanf(fFovDegrees * 0.5f / 180.0f * 3.14159f);
    mat4x4 matrix;
    matrix.m[0][0] = fAspectRatio * fFovRad;
    matrix.m[1][1] = fFovRad;
    matrix.m[2][2] = fFar / (fFar - fNear);
    matrix.m[3][2] = (-fFar * fNear) / (fFar - fNear);
    matrix.m[2][3] = 1.0f;
    matrix.m[3][3] = 0.0f;
    return matrix;
}

mat4x4 Matrix_MultiplyMatrix(mat4x4 &m1, mat4x4 &m2)
{
    mat4x4 matrix;
    for (int c = 0; c < 4; c++)
        for (int r = 0; r < 4; r++)
            matrix.m[r][c] = m1.m[r][0] * m2.m[0][c] + m1.m[r][1] * m2.m[1][c] + m1.m[r][2] * m2.m[2][c] + m1.m[r][3] * m2.m[3][c];
    return matrix;
}

mat4x4 Matrix_PointAt(vec3d &pos, vec3d &target, vec3d &up)
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
    mat4x4 matrix;
    matrix.m[0][0] = newRight.x;	matrix.m[0][1] = newRight.y;	matrix.m[0][2] = newRight.z;	matrix.m[0][3] = 0.0f;
    matrix.m[1][0] = newUp.x;		matrix.m[1][1] = newUp.y;		matrix.m[1][2] = newUp.z;		matrix.m[1][3] = 0.0f;
    matrix.m[2][0] = newForward.x;	matrix.m[2][1] = newForward.y;	matrix.m[2][2] = newForward.z;	matrix.m[2][3] = 0.0f;
    matrix.m[3][0] = pos.x;			matrix.m[3][1] = pos.y;			matrix.m[3][2] = pos.z;			matrix.m[3][3] = 1.0f;
    return matrix;

}

mat4x4 Matrix_QuickInverse(mat4x4 &m) // Only for Rotation/Translation Matrices
{
    mat4x4 matrix;
    matrix.m[0][0] = m.m[0][0]; matrix.m[0][1] = m.m[1][0]; matrix.m[0][2] = m.m[2][0]; matrix.m[0][3] = 0.0f;
    matrix.m[1][0] = m.m[0][1]; matrix.m[1][1] = m.m[1][1]; matrix.m[1][2] = m.m[2][1]; matrix.m[1][3] = 0.0f;
    matrix.m[2][0] = m.m[0][2]; matrix.m[2][1] = m.m[1][2]; matrix.m[2][2] = m.m[2][2]; matrix.m[2][3] = 0.0f;
    matrix.m[3][0] = -(m.m[3][0] * matrix.m[0][0] + m.m[3][1] * matrix.m[1][0] + m.m[3][2] * matrix.m[2][0]);
    matrix.m[3][1] = -(m.m[3][0] * matrix.m[0][1] + m.m[3][1] * matrix.m[1][1] + m.m[3][2] * matrix.m[2][1]);
    matrix.m[3][2] = -(m.m[3][0] * matrix.m[0][2] + m.m[3][1] * matrix.m[1][2] + m.m[3][2] * matrix.m[2][2]);
    matrix.m[3][3] = 1.0f;
    return matrix;
}

vec3d Vector_IntersectPlane(vec3d &plane_p, vec3d &plane_n, vec3d &lineStart, vec3d &lineEnd)
{
    plane_n = plane_n.normalise();
    float plane_d = -1 * (plane_n * plane_p);
    float ad = lineStart * plane_n;
    float bd = lineEnd * plane_n;
    float t = (-plane_d - ad) / (bd - ad);
    vec3d lineStartToEnd = lineEnd - lineStart;
    vec3d lineToIntersect =  t * lineStartToEnd;
    return lineStart + lineToIntersect;
}

int Triangle_ClipAgainstPlane(vec3d plane_p, vec3d plane_n, triangle &in_tri, triangle &out_tri1, triangle &out_tri2)
{
    plane_n = plane_n.normalise();

    auto dist = [&](vec3d& p){
        return (plane_n.x * p.x + plane_n.y * p.y + plane_n.z * p.z - (plane_n * plane_p));
    };


    // Create two temporary storage arrays to classify points either side of plane
    // If distance sign is positive, point lies on "inside" of plane
    vec3d* inside_points[3];  int nInsidePointCount = 0;
    vec3d* outside_points[3]; int nOutsidePointCount = 0;

    float d0 = dist(in_tri.p[0]);
    float d1 = dist(in_tri.p[1]);
    float d2 = dist(in_tri.p[2]);

    if (d0 >= 0) { inside_points[nInsidePointCount++] = &in_tri.p[0]; }
    else { outside_points[nOutsidePointCount++] = &in_tri.p[0]; }
    if (d1 >= 0) { inside_points[nInsidePointCount++] = &in_tri.p[1]; }
    else { outside_points[nOutsidePointCount++] = &in_tri.p[1]; }
    if (d2 >= 0) { inside_points[nInsidePointCount++] = &in_tri.p[2]; }
    else { outside_points[nOutsidePointCount++] = &in_tri.p[2]; }

    if(nInsidePointCount == 0){
        // All points, aka the whole triangle, is outside of the plane
        return 0;
    }else if(nInsidePointCount == 3){
        out_tri1 = in_tri;
        return 1;
    }

    else if(nInsidePointCount == 1 && nOutsidePointCount == 2){
        out_tri1.shading = in_tri.shading;

        // The point on the inside is valid, så keep that
        out_tri1.p[0] = *inside_points[0];

        // the two new points is where the original side
        // intersects with the plane
        out_tri1.p[1] = Vector_IntersectPlane(plane_p, plane_n, *inside_points[0], *outside_points[0]);
		out_tri1.p[2] = Vector_IntersectPlane(plane_p, plane_n, *inside_points[0], *outside_points[1]);

		return 1; // Return the newly formed single triangle
    }

    else if (nInsidePointCount == 2 && nOutsidePointCount == 1)
    {
        // Triangle should be clipped. As two points lie inside the plane,
        // the clipped triangle becomes a "quad". Fortunately, we can
        // represent a quad with two new triangles

        // Copy appearance info to new triangles
        out_tri1.shading =  in_tri.shading;

        out_tri2.shading =  in_tri.shading;

        // The first triangle consists of the two inside points and a new
        // point determined by the location where one side of the triangle
        // intersects with the plane
        out_tri1.p[0] = *inside_points[0];
        out_tri1.p[1] = *inside_points[1];
        out_tri1.p[2] = Vector_IntersectPlane(plane_p, plane_n, *inside_points[0], *outside_points[0]);

        // The second triangle is composed of one of he inside points, a
        // new point determined by the intersection of the other side of the
        // triangle and the plane, and the newly created point above
        out_tri2.p[0] = *inside_points[1];
        out_tri2.p[1] = out_tri1.p[2];
        out_tri2.p[2] = Vector_IntersectPlane(plane_p, plane_n, *inside_points[1], *outside_points[0]);

        return 2; // Return two newly formed triangles which form a quad
    }
    return 0;
}







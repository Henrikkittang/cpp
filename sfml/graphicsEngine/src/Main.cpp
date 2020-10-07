#include<iostream>
#include<algorithm>
#include <bits/stdc++.h>
#include<chrono>

#include "structures.hpp"

#include "SFML/Graphics.hpp"

const int g_width = 800;
const int g_height = 800;

class olcEngine3D {
private:
	mesh meshCube;
	mat4x4 matProj;

	vec3d vCamera;
	vec3d vLookDir;

	float fYaw;

	float fTheta = 0;
	sf::RenderWindow* wn;


public:
	olcEngine3D(sf::RenderWindow* wn) :wn(wn) {}

	void setup(){
		meshCube.LoadFromObjectFile("mountains.obj");

		matProj = Matrix_MakeProjection(90.0f, (float)g_height / (float)g_width, 0.1f, 1000.0f);
	}


	void update(const float& fElapsedTime) {
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)){
			vCamera.y += 2.0f * fElapsedTime;
		}else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down)){
			vCamera.y -= 2.0f * fElapsedTime;
		}else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left)){
			vCamera.x += 2.0f * fElapsedTime;
		}else if(sf::Keyboard::isKeyPressed(sf::Keyboard::Right)){
			vCamera.x -= 2.0f * fElapsedTime;
		}

		vec3d vForward = (2.0f * fElapsedTime) * vLookDir;

		if(sf::Keyboard::isKeyPressed(sf::Keyboard::W)){
			vCamera =  vCamera + vForward;
		}else if(sf::Keyboard::isKeyPressed(sf::Keyboard::S)){
			vCamera =  vCamera - vForward;
		}

		if(sf::Keyboard::isKeyPressed(sf::Keyboard::A)){
			fYaw -= 2.0f * fElapsedTime;
		}else if(sf::Keyboard::isKeyPressed(sf::Keyboard::D)){
			fYaw += 2.0f * fElapsedTime;
		}

		//fTheta += 1.0f * fElapsedTime;

		mat4x4 matRotZ = Matrix_MakeRotationZ(fTheta * 0.5f);
		mat4x4 matRotX = Matrix_MakeRotationX(fTheta);

		mat4x4 matTrans = Matrix_MakeTranslation(0.0f, 0.0f, 5.0f);

		mat4x4 matWorld = Matrix_MakeIdentity();
		matWorld = Matrix_MultiplyMatrix(matRotZ, matRotX);
		matWorld = Matrix_MultiplyMatrix(matWorld, matTrans);

 		vec3d vUp = vec3d(0, 1, 0);
		vec3d vTarget = vec3d(0, 0, 1);
		mat4x4 matCameraRot = Matrix_MakeRotationY(fYaw);
		vLookDir = Matrix_MultiplyVector(matCameraRot, vTarget);
		vTarget = vCamera + vLookDir;

		mat4x4 matCamera = Matrix_PointAt(vCamera, vTarget, vUp);
		mat4x4 matView = Matrix_QuickInverse(matCamera);

		std::vector<triangle> vecTrianglesToRaster;

		// Draw triangels
		for (auto& tri : meshCube.tris) {
			triangle triProjected, triTransformed, triViewed;

			// World Matrix Transform
			triTransformed.p[0] = Matrix_MultiplyVector(matWorld, tri.p[0]);
			triTransformed.p[1] = Matrix_MultiplyVector(matWorld, tri.p[1]);
			triTransformed.p[2] = Matrix_MultiplyVector(matWorld, tri.p[2]);

			vec3d normal, line1, line2;
			line1 = triTransformed.p[1] - triTransformed.p[0];
			line2 = triTransformed.p[2] - triTransformed.p[0];

			normal = line1 % line2;
			normal = normal.normalise();

			vec3d vCameraRay = triTransformed.p[0] - vCamera;

			if(normal * vCameraRay < 0.0f)
			{
				// Ilumination
				vec3d lightDir(0.0f, 1.0f, -1.0f);
				lightDir = lightDir.normalise();

				float dotProd = std::max(0.1f, lightDir * normal);

				// Convert world space 	--> view space
				triViewed.p[0] = Matrix_MultiplyVector(matView, triTransformed.p[0]);
				triViewed.p[1] = Matrix_MultiplyVector(matView, triTransformed.p[1]);
				triViewed.p[2] = Matrix_MultiplyVector(matView, triTransformed.p[2]);
				triViewed.shading = dotProd;

				int nClippedTriangles = 0;
				triangle clipped[2];
				nClippedTriangles = Triangle_ClipAgainstPlane({ 0.0f, 0.0f, 0.1f }, { 0.0f, 0.0f, 1.0f }, triViewed, clipped[0], clipped[1]);

				for(int n = 0; n < nClippedTriangles; n++)
				{

					// Project triangles from 3D to 2D
					triProjected.p[0] = Matrix_MultiplyVector(matProj, clipped[n].p[0]);
					triProjected.p[1] = Matrix_MultiplyVector(matProj, clipped[n].p[1]);
					triProjected.p[2] = Matrix_MultiplyVector(matProj, clipped[n].p[2]);
					triProjected.shading = clipped[n].shading;

					triProjected.p[0] /= triProjected.p[0].w;
					triProjected.p[1] /= triProjected.p[1].w;
					triProjected.p[2] /= triProjected.p[2].w;

					// X/Y are inverted so put them back
					triProjected.p[0].x *= -1.0f;
					triProjected.p[1].x *= -1.0f;
					triProjected.p[2].x *= -1.0f;
					triProjected.p[0].y *= -1.0f;
					triProjected.p[1].y *= -1.0f;
					triProjected.p[2].y *= -1.0f;

					// Scale into view
					vec3d vOffsetView(1, 1, 0);
					triProjected.p[0] = triProjected.p[0] + vOffsetView;
					triProjected.p[1] = triProjected.p[1] + vOffsetView;
					triProjected.p[2] = triProjected.p[2] + vOffsetView;

					triProjected.p[0].x *= 0.5f * (float)g_width; triProjected.p[0].y *= 0.5f * (float)g_height;
					triProjected.p[1].x *= 0.5f * (float)g_width; triProjected.p[1].y *= 0.5f * (float)g_height;
					triProjected.p[2].x *= 0.5f * (float)g_width; triProjected.p[2].y *= 0.5f * (float)g_height;

					// Store triangles for sorting
					vecTrianglesToRaster.push_back(triProjected);
				}
			}
		}

		sort(vecTrianglesToRaster.begin(), vecTrianglesToRaster.end(), [](triangle& t1, triangle& t2)
		{
			float z1 = (t1.p[0].z + t1.p[1].z + t1.p[2].z) / 3.0f;
			float z2 = (t2.p[0].z + t2.p[1].z + t2.p[2].z) / 3.0f;
			return z1 > z2;
		});

		for(auto& triToRaster : vecTrianglesToRaster)
		{
			triangle clipped[2];
			std::list<triangle> listTriangles;
			listTriangles.push_back(triToRaster);
			int nNewTriangles = 1;

			for(int p = 0; p < 4; p++)
			{
				int nTrisToAdd = 0;
				while(nNewTriangles > 0){
					triangle test = listTriangles.front();
					listTriangles.pop_front();
					nNewTriangles--;
					switch (p)
					{
						case 0:	nTrisToAdd = Triangle_ClipAgainstPlane({ 0.0f, 0.0f, 0.0f }, { 0.0f, 1.0f, 0.0f }, test, clipped[0], clipped[1]); break;
						case 1:	nTrisToAdd = Triangle_ClipAgainstPlane({ 0.0f, (float)g_width - 1, 0.0f }, { 0.0f, -1.0f, 0.0f }, test, clipped[0], clipped[1]); break;
						case 2:	nTrisToAdd = Triangle_ClipAgainstPlane({ 0.0f, 0.0f, 0.0f }, { 1.0f, 0.0f, 0.0f }, test, clipped[0], clipped[1]); break;
						case 3:	nTrisToAdd = Triangle_ClipAgainstPlane({ (float)g_height - 1, 0.0f, 0.0f }, { -1.0f, 0.0f, 0.0f }, test, clipped[0], clipped[1]); break;
					}
					for(int w = 0; w < nTrisToAdd; w++){
						listTriangles.push_back(clipped[w]);
					}
				}
				nNewTriangles = listTriangles.size();
			}
			for(auto& tri : listTriangles){
				FillTriangle(
					tri.p[0].x, tri.p[0].y,
					tri.p[1].x, tri.p[1].y,
					tri.p[2].x, tri.p[2].y,
					tri.shading, wn
				);
			}
		}
	}
};


int main(){
	sf::ContextSettings settings;
	settings.antialiasingLevel = 8;
	sf::RenderWindow window(sf::VideoMode(g_width, g_height), "Test", sf::Style::Close | sf::Style::Titlebar, settings);
	window.setFramerateLimit(60);

	olcEngine3D Engine(&window);
	Engine.setup();

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}
		window.clear();
		Engine.update( 0.05 );
		window.display();
	}
	return 0;
}

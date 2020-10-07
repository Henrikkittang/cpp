#include<iostream>
#include<random>
#include<vector>

#include<SFML/Graphics.hpp>

const int g_width = 800;
const int g_height = 800;

struct Triangle
{
	sf::Vector2f p1;
	sf::Vector2f p2;
	sf::Vector2f p3;

	Triangle(sf::Vector2f a_p1, sf::Vector2f a_p2, sf::Vector2f a_p3)
		: p1(a_p1), p2(a_p2), p3(a_p3)
	{}
};

std::vector<sf::Vector2f> rand_points(int a_amount)
{
	std::vector<sf::Vector2f> points;
	points.reserve(a_amount);
	for(int i = 0; i < a_amount; i++)
	{
		float x = std::rand()%g_width;
		float y = std::rand()%g_height;

		points.emplace_back(x, y);
	}
	return points;
}

bool inCircle (Triangle a_tris, sf::Vector2f a_point) {
    float ax_ = a_tris.p1.x-a_point.x;
    float ay_ = a_tris.p1.y-a_point.y;
    float bx_ = a_tris.p2.x-a_point.x;
    float by_ = a_tris.p2.y-a_point.y;
    float cx_ = a_tris.p3.x-a_point.x;
    float cy_ = a_tris.p3.y-a_point.y;
    return (
        (ax_*ax_ + ay_*ay_) * (bx_*cy_-cx_*by_) -
        (bx_*bx_ + by_*by_) * (ax_*cy_-cx_*ay_) +
        (cx_*cx_ + cy_*cy_) * (ax_*by_-bx_*ay_)
    ) > 0;
}

std::vector<Triangle> triangulation(std::vector<sf::Vector2f> a_points)
{
	std::vector<Triangle> triangles;
	triangles.push_back( Triangle({g_width/2, -200}, {g_width+200, g_height}, {-200, g_height} ) );
	for(auto& point : a_points)
	{
		std::vector<Triangle> bad_triangles;

		for(auto& tris : triangles)
		{
			if(inCircle(tris, point))
			{
				bad_triangles.push_back(tris);
			}
		}

		std::vector<std::vector<sf::Vector2f>> polygon;
		for(auto& bad_tris : bad_triangles)
		{
			std::vector<sf::Vector2f> edge1 = {bad_tris.p1, bad_tris.p2};
			std::vector<sf::Vector2f> edge2 = {bad_tris.p2, bad_tris.p3};
			std::vector<sf::Vector2f> edge3 = {bad_tris.p3, bad_tris.p1};

			// if edgeX not shared : polygon.push_back(edgeX);
		}
	}
}

int main(){


	sf::RenderWindow window(sf::VideoMode(g_width, g_height), "Triangulation", sf::Style::Close | sf::Style::Titlebar);

	window.setFramerateLimit(10);

	srand((int)time(0));  // uses the time as seed for the radom number generator

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();


		window.display();

	}
}


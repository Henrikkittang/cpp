#include<SFML/Graphics.hpp>
#include "../vector_lib/polygons.hpp"
#include "../vector_lib/circle.hpp"


void draw_polygon(sf::RenderWindow& wn, Polygon2& poly, sf::Color a_color=sf::Color::Magenta)
{
	sf::ConvexShape polygon;
	polygon.setPointCount(poly.point_count());
	for(int i = 0; i < poly.point_count(); i++)
	{
		polygon.setPoint(i, sf::Vector2f(poly[i].x, poly[i].y));
	}
	polygon.setFillColor(a_color);

	wn.draw(polygon);
}

void draw_circle(sf::RenderWindow& wn, const Circle& circle)
{
	sf::CircleShape circ(circle.radius);
	circ.setFillColor(sf::Color::Yellow);
	circ.setPosition(circle.center.x - (circle.radius), circle.center.y - (circle.radius));
	wn.draw(circ);
}

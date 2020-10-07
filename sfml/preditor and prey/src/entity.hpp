
#include<SFML/Graphics.hpp>

class Entity
{
protected:
	float health = 100;
	sf::RectangleShape body;

public:

	Entity(float x, float y)
	{
		body.setSize(sf::Vector2f(scl, scl));
		body.setFillColor(sf::Color::Red);
		body.setPosition(x, y);
	}

	virtual bool updateHealth() = 0;

	void move(std::vector<std::vector<int>>& grid)
	{
	}

	void draw(sf::RenderWindow& wn)
	{
		wn.draw(body);
	}
};

class Predator : public Entity
{
private:

public:

	bool updateHealth()
	{
		health--;
		// if(health >)
	}
};







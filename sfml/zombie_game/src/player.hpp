#pragma once

#include <cmath>
#include<array>
#include<sstream>
#include<SFML/Graphics.hpp>

#include "guns.hpp"


class Player
{
private:
	float m_size = 40;
	float m_speed = 15;
	size_t m_gun_idx = 0;
	sf::Vector2f m_dir;
	sf::RectangleShape m_player;
	sf::Texture m_texture;
	sf::Font m_font;
	std::array<Gun*, 3> m_guns = {new Revolver(), new MachineGun(), new Shotgun()} ;
	enum CurGunIdx { REVOLVER, MACHINGUN, SHOTGUN };

public:

	Player(float ax, float ay)
	{
		m_player.setPosition(ax, ay);
		m_player.setSize(sf::Vector2f(m_size, m_size));
		//m_player.setFillColor(sf::Color::Red);
		m_player.setOrigin(m_size/2, m_size/2);

		m_texture.loadFromFile("images/player.png");
		m_player.setTexture(&m_texture);
		m_font.loadFromFile("fonts/arial.ttf");
	}

	~Player()
	{
		for(size_t i = 0; i < m_guns.size(); i++)
		{
			delete m_guns[i];
		}
	}

	float get_angle(sf::Vector2f other_pos) const
	{
		sf::Vector2f cur_pos = m_player.getPosition();

		sf::Vector2f vect1(0, 1);
		sf::Vector2f vect2( other_pos.x-cur_pos.x, other_pos.y-cur_pos.y );

		float length1 = sqrtf(powf(vect1.x, 2) + powf(vect1.y, 2));
		float length2 = sqrtf(powf(vect2.x, 2) + powf(vect2.y, 2));

		float lenght_prod = length1*length2;
		float scalar_prod = vect1.x*vect2.x + vect1.y*vect2.y;

		float angleDegrees = acos(scalar_prod/lenght_prod) * (180 / 3.141592653589793238463);

		if(other_pos.x > cur_pos.x){
			return (360 - angleDegrees);
		}else{
			return angleDegrees;
		}
	}

	void move(sf::RenderWindow& wn)
	{
		m_player.setRotation(get_angle((sf::Vector2f)sf::Mouse::getPosition(wn))- 180);

		m_dir = {0, 0};

		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)){
			m_dir.y = -1;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)){
			m_dir.y = 1;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)){
			m_dir.x = -1;
		}if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)){
			m_dir.x = 1;
		}

		if( sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Num1) ){
			m_gun_idx = CurGunIdx::REVOLVER;
		}else if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Num2)){
			m_gun_idx = CurGunIdx::MACHINGUN;
		}else if(sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Num3)){
			m_gun_idx = CurGunIdx::SHOTGUN;
		}

		m_player.move(m_dir.x*m_speed, m_dir.y*m_speed);
	}

	void bounce(const sf::Vector2f& vect)
	{
		m_player.move(vect);
	}

	void update_bullets(sf::RenderWindow& wn)
	{
		m_guns[m_gun_idx]->update_bullets(wn, pos());
	}

	const std::vector<Bullet>& get_bullets() const
	{
		return m_guns[m_gun_idx]->get_bullets();
	}

	void remove_bullet(int index)
	{
		m_guns[m_gun_idx]->remove_bullet(index);
	}

	const sf::Vector2f& pos() const
	{
		return m_player.getPosition();
	}

	void draw(sf::RenderWindow& wn)
	{
		wn.draw(m_player);

		sf::Text text;
		text.setFont(m_font);
		text.setStyle(sf::Text::Bold);
		text.setCharacterSize(34);
		text.setFillColor(sf::Color::Black);

		size_t capacity =  m_guns[m_gun_idx]->mag_capacity();
		size_t amount =  m_guns[m_gun_idx]->mag_amount();
		std::stringstream gunText;

		switch (m_gun_idx)
		{
			case CurGunIdx::REVOLVER:
				gunText << "Revovler: ";
				break;
			case CurGunIdx::MACHINGUN:
				gunText << "Machinegun: ";
				break;
			case CurGunIdx::SHOTGUN:
				gunText << "Shotgun: ";
				break;
		}
		gunText << amount << "/" << capacity;
		text.setString(gunText.str());
		wn.draw(text);
	}
};





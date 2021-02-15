#pragma once

#include<cmath>
#include<SFML/Graphics.hpp>


class Bullet
{
private:
	sf::RectangleShape bullet;
 	sf::Vector2f dir_vect;
	float m_speed = 15;
	float m_damage = 20;
public:
	Bullet(const sf::Vector2f& cur_pos, const sf::Vector2f& t_args, float damage=20)
	{
		bullet.setPosition(cur_pos);
		bullet.setSize(sf::Vector2f(4, 10));
		bullet.setOrigin(2, 5);
		bullet.setFillColor(sf::Color::Red);

		float angle = get_angle(t_args);
		bullet.setRotation(angle);

		float length = sqrtf(powf(t_args.x, 2) + powf(t_args.y, 2));
		dir_vect = sf::Vector2f( t_args.x / length, t_args.y / length );

		m_damage = damage;
	}

	float get_angle(const sf::Vector2f& vect) const
	{
		// Gets angle between vect and vect(0, 1) in range 0 to 360 degrees
		float lenght_prod = sqrtf(powf(vect.x, 2) + powf(vect.y, 2));
		float scalar_prod = vect.y;
		float angleDegrees = acos(scalar_prod/lenght_prod) * (180 / 3.141592653589793238463);

		if(vect.x > 0) return (360 - angleDegrees);
		else return angleDegrees;
	}

	void move()
	{
		bullet.move(dir_vect.x * m_speed, dir_vect.y * m_speed);
	}

	void draw(sf::RenderWindow& wn) const
	{
		wn.draw(bullet);
	}

	const sf::Vector2f& pos() const
	{
		return bullet.getPosition();
	}

	float damage() const
	{
		return m_damage;
	}
};

class Gun
{
private:
	float m_fire_loop = 10;
	float m_reload_loop = 10;

protected:
	float m_fire_frequency;
	float m_realod_time;
	// float m_weight;
	size_t m_mag_capacity;
	size_t m_mag_amount;
	size_t m_bullet_damage;
	// size_t m_total_bullets;
	std::vector<Bullet> m_bullets;

public:

	virtual void fire_weapon(const sf::Vector2f& cur_pos, const sf::Vector2f& vect) = 0;

	void reload()
	{

	}

	void update_bullets(sf::RenderWindow& wn, sf::Vector2f cur_pos)
	{
		if(m_mag_amount <= 0)
		{
			std::cout << "Reloading \n";
			m_reload_loop++;
			if(m_reload_loop >= m_realod_time)
			{
				m_reload_loop = 0;
				m_mag_amount = m_mag_capacity;
			}
		}

		else if(sf::Mouse::isButtonPressed(sf::Mouse::Left) && m_fire_loop > m_fire_frequency)
		{
			sf::Vector2f mouse_pos = wn.mapPixelToCoords(sf::Mouse::getPosition(wn));;
			sf::Vector2f vect = {mouse_pos.x-cur_pos.x, mouse_pos.y-cur_pos.y };
			float length = sqrtf(powf(vect.x, 2) + powf(vect.y, 2));
			vect = sf::Vector2f( vect.x / length * 500, vect.y / length * 500 );

			fire_weapon(cur_pos, vect);

			m_fire_loop = 0;
			m_mag_amount--;
		}

		std::vector<Bullet> temp;
		for(auto& bullet : m_bullets)
		{
			// Delete bullets when they are a certian distance from player, aka cur_pos
			// if(bullet.pos().x > 0 && bullet.pos().x < width && bullet.pos().y > 0 &&bullet.pos().y < height)
			{
				bullet.move();
				bullet.draw(wn);
				temp.push_back(bullet);
			}
		}
		m_bullets = temp;
		m_fire_loop++;
	}

	void draw_bullets(sf::RenderWindow& wn)
	{
		for(auto& bullet : m_bullets)
		{
			bullet.draw(wn);
		}
	}

	const std::vector<Bullet>& get_bullets() const { return m_bullets; }
	void remove_bullet(int index){ m_bullets.erase(m_bullets.begin() + index); }
	size_t mag_capacity() const { return m_mag_capacity; }
	size_t mag_amount() const { return m_mag_amount; }

};


float rand_int(int start, int end)
{
	return (std::rand() % (int)(end - start)) + start;
}

sf::Vector2f offset_vector(const sf::Vector2f& vect, float min, float max)
{
	return sf::Vector2f( vect.x + rand_int(min, max), vect.y + rand_int(min, max) );
}

class Revolver : public Gun
{
public:

	Revolver()
	{
		m_fire_frequency = 10;
		m_realod_time = 120;
		m_mag_capacity = 6;
		m_mag_amount = 6;
		m_bullet_damage = 40;
	}

	void fire_weapon(const sf::Vector2f& cur_pos, const sf::Vector2f& vect) override
	{
		m_bullets.emplace_back(cur_pos, offset_vector(vect, -30, 30), m_bullet_damage);
	}
};


class MachineGun : public Gun
{
public:

	MachineGun()
	{
		m_fire_frequency = 1;
		m_realod_time = 100;
		m_mag_capacity = 80;
		m_mag_amount = 80;
		m_bullet_damage = 5;
	}

	void fire_weapon(const sf::Vector2f& cur_pos, const sf::Vector2f& vect) override
	{
		m_bullets.emplace_back(cur_pos, offset_vector(vect, -80, 80), m_bullet_damage);
	}
};

class Shotgun : public Gun
{
public:

	Shotgun()
	{
		m_fire_frequency = 20;
		m_realod_time = 100;
		m_mag_capacity = 8;
		m_mag_amount = 8;
		m_bullet_damage = 15;
	}

	void fire_weapon(const sf::Vector2f& cur_pos, const sf::Vector2f& vect) override
	{
		for(int i = 0; i < 10; i++)
		{
			m_bullets.emplace_back(cur_pos, offset_vector(vect, -150, 150), m_bullet_damage);
		}
	}
};








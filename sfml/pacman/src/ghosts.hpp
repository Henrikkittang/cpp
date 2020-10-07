

#include<SFML/Graphics.hpp>
#include "pathfinding.hpp"


class Ghost : public sf::Drawable
{
private:
	sf::RectangleShape enemy;
	float m_width = scl - 5;
	std::vector<std::vector<int>> path;
	float xDir = 0.0f;
	float yDir = 0.0f;

	virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const
	{
		target.draw(enemy);
	}

	std::vector<int> get_grid_pos()
	{
		sf::Vector2f pos = enemy.getPosition();
		return std::vector<int>((int)(pos.x) / scl, (int)(pos.y) / scl);
	}

public:
	Ghost(float start_x, float start_y)
	{
		enemy.setSize(sf::Vector2f(m_width, m_width));
		enemy.setFillColor(sf::Color::Magenta);
		enemy.setPosition(start_x * scl + 1, start_y * scl + 1);
	}

	void move(TileMap& map, Pacman& player, float pace)
	{
		auto cur_pos = get_grid_pos();
		if(path.size() > 0)
		{
			auto next_pos = path[path.size()-1];
			if(cur_pos[0] > next_pos[0]){
				yDir = 0;
				xDir = -1;
			}else if(cur_pos[0] < next_pos[0]){
				yDir = 0;
				xDir = 1;
			}else{
				if(cur_pos[1] > next_pos[1]){
					yDir = -1;
					xDir = 0;
				}else{
					yDir = 1;
					xDir = 0;
				}
			}
			enemy.move(xDir * 0.5  * (120/pace), yDir * 0.5 * (120/pace));
		}else{
			path = find_path(map.map_grid, cur_pos, player.get_grid_pos());
			move(map, player, pace);
		}
	}
};



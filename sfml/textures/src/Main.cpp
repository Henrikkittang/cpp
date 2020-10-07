#include<iostream>
#include<vector>

#include<SFML/Graphics.hpp>

const int width = 800;
const int height = 800;
const int scl = 80;

class TileMap : public sf::Drawable{
private:
	std::vector<std::vector<int>> layout;
	sf::Texture dirt_text;
	sf::Texture grass_text;
	sf::Texture water_text;
	std::vector<sf::Sprite> sprites;
	int tile_size;

	virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const
	{
		for(const auto& sprite : sprites)
		{
			target.draw(sprite);
		}
	}

public:

	TileMap(std::vector<std::vector<int>> a_layout, int a_tile_size)
	{
		layout = a_layout;
		tile_size = a_tile_size;
		sprites.reserve(layout.size() * layout[0].size());

		dirt_text.loadFromFile("dirt.jpg", sf::IntRect(0, 0, tile_size, tile_size));
		grass_text.loadFromFile("grass.jpg", sf::IntRect(0, 0, tile_size, tile_size));
		water_text.loadFromFile("water.jpg", sf::IntRect(0, 0, tile_size, tile_size));

		for(int i = 0; i < layout.size(); i++){
			for(int j = 0; j < layout[i].size(); j++){
				sf::Sprite sprite;
				sprite.setPosition(sf::Vector2f(j*tile_size, i*tile_size));

				if(layout[i][j] == 0) sprite.setTexture(dirt_text);
				if(layout[i][j] == 1) sprite.setTexture(grass_text);
				if(layout[i][j] == 2) sprite.setTexture(water_text);

				sprites.push_back(sprite);
			}
		}
	}
};

int main(){

	sf::RenderWindow window(sf::VideoMode(width, height), "Textures", sf::Style::Close | sf::Style::Titlebar);
	// window.setFramerateLimit(10);

	std::vector<std::vector<int>> my_layout =
	{
		{1, 1, 1, 1, 0, 0, 0, 0, 0, 0},
		{2, 2, 2, 1, 0, 1, 1, 1, 1, 0},
		{1, 1, 2, 1, 0, 1, 2, 2, 1, 0},
		{0, 1, 2, 1, 0, 1, 1, 1, 1, 0},
		{0, 1, 2, 1, 0, 0, 0, 0, 0, 0},
		{0, 1, 2, 1, 1, 1, 1, 1, 0, 0},
		{0, 1, 2, 2, 2, 2, 2, 1, 0, 0},
		{0, 1, 1, 1, 1, 1, 2, 1, 1, 1},
		{0, 0, 0, 0, 0, 1, 2, 2, 2, 2},
		{0, 0, 0, 0, 0, 1, 2, 1, 1, 1},
	};

	TileMap tile_map(my_layout, scl);

	std::vector<int> yes;
	yes.emplace_back(3);

	std::cout << "starting game loop... \n";
	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}

		window.clear();

		if(sf::Mouse::isButtonPressed(sf::Mouse::Left)){
			sf::Vector2i mp = sf::Mouse::getPosition(window);
		}

		window.draw(tile_map);

		window.display();

	}
}


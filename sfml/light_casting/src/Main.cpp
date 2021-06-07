#include<iostream>
#include<memory>
#include<cmath>
#include<vector>
#include<algorithm>
#include<map>

#include<SFML/Graphics.hpp>

#include "vector2.hpp"
#include "fps.hpp"


const int width = 800;
const int height = 800;
const int scl = 20;

/*
NOTES FOR OPTIMIZATION

- use a map with angle as key to store triangle points
- Use triangle fan to draw istead of multiple triangles (?)

*/

struct Edge{
	sf::Vector2f start;
	sf::Vector2f end;
};

struct Cell{
	bool exists;
	bool edges_exists[4];
	std::shared_ptr<Edge> edges_pointer[4] = {std::make_shared<Edge>(), std::make_shared<Edge>(), std::make_shared<Edge>(), std::make_shared<Edge>()};

};


#include "drawing.hpp"

std::vector<Cell*> find_children(std::vector<std::vector<Cell>>& tgrid, const std::vector<int>& pos)
{
    std::vector<Cell*> children;
    children.reserve(4);

    for(int i = -1; i < 2; i++){
    for(int j = -1; j < 2; j++){
        if(abs(i) == abs(j)) continue;
        if(i != 0 || j != 0){
            std::vector<int> temp_pos = {pos[0] + j, pos[1] + i};
            if(temp_pos[0] >= 0 && temp_pos[0] < tgrid[0].size() && temp_pos[1] >= 0 && temp_pos[1] < tgrid.size()){
                children.push_back(&tgrid[ temp_pos[1] ][ temp_pos[0] ]);
            }
        }
    }
    }
    return children;
}

std::vector<std::shared_ptr<Edge>> make_edges(std::vector<std::vector<Cell>>& cells)
{

	const int NORTH = 0;
	const int WEST = 1;
	const int EAST = 2;
	const int SOUTH = 3;

	std::vector<std::shared_ptr<Edge>> edges;
	for(int q = 0; q < (height/scl); q++)
	for(int j = 0; j < (width/scl); j++){
		Cell* cur_cell = &cells[q][j];
		if(cur_cell->exists){
			auto neigbours = find_children(cells, {j, q});

			if(neigbours.size() > 3 && !neigbours[3]->exists){
				if(neigbours[1]->edges_exists[3]){
					auto side_edge = neigbours[1]->edges_pointer[3];
					side_edge->end.x += scl;
					cur_cell->edges_pointer[3] = side_edge;
					cur_cell->edges_exists[3] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl;
					new_edge->start.y = q * scl + scl;
					new_edge->end.x = j * scl + scl;
					new_edge->end.y = q * scl + scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[3] = new_edge;
					cur_cell->edges_exists[3] = true;
				}
			}

			if(neigbours.size() > 2 && !neigbours[2]->exists){
				if(neigbours[0]->edges_exists[2]){
					auto side_edge = neigbours[0]->edges_pointer[2];
					side_edge->end.y += scl;
					cur_cell->edges_pointer[2] = side_edge;
					cur_cell->edges_exists[2] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl + scl;
					new_edge->start.y = q * scl;
					new_edge->end.x = j * scl + scl;
					new_edge->end.y = q * scl + scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[2] = new_edge;
					cur_cell->edges_exists[2] = true;
				}
			}

			if(neigbours.size() > 1 && !neigbours[1]->exists){
				if(neigbours[0]->edges_exists[1]){
					auto side_edge = neigbours[0]->edges_pointer[1];
					side_edge->end.y += scl;
					cur_cell->edges_pointer[1] = side_edge;
					cur_cell->edges_exists[1] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl;
					new_edge->start.y = q * scl;
					new_edge->end.x = j * scl;
					new_edge->end.y = q * scl + scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[1] = new_edge;
					cur_cell->edges_exists[1] = true;
				}
			}

			if(neigbours.size() > 0 && !neigbours[0]->exists){
				if(neigbours[1]->edges_exists[0]){
					auto side_edge = neigbours[1]->edges_pointer[0];
					side_edge->end.x += scl;
					cur_cell->edges_pointer[0] = side_edge;
					cur_cell->edges_exists[0] = true;
				}else{
					std::shared_ptr<Edge> new_edge = std::make_shared<Edge>();
					new_edge->start.x = j * scl;
					new_edge->start.y = q * scl;
					new_edge->end.x = j * scl + scl;
					new_edge->end.y = q * scl;
					edges.push_back(new_edge);
					cur_cell->edges_pointer[0] = new_edge;
					cur_cell->edges_exists[0] = true;
				}
			}
		}
	}
	return edges;
}

std::vector<std::vector<float>> make_triangles(std::vector<std::shared_ptr<Edge>>& edges, sf::Vector2i& center_pos)
{
	const float radius = 50.0f;
	std::vector<std::vector<float>> triangles;

	for(const auto& edge : edges)
	{
		for(int i = 0; i < 2; i++)
		{
			Vector2<float> edge_vect(0, 0);
			if(i == 0) edge_vect = Vector2<float>(edge->start.x - center_pos.x, edge->start.y - center_pos.y);
			if(i == 1) edge_vect = Vector2<float>(edge->end.x - center_pos.x, edge->end.y - center_pos.y);

			float cur_ang = atan2f(edge_vect.y, edge_vect.x);

			for(int j = 0; j < 3; j++)
			{
				if(j == 0) cur_ang -= 0.0001f;
				if(j == 1) cur_ang = cur_ang;
				if(j == 2) cur_ang += 0.0002f;

				edge_vect.x = radius * cosf(cur_ang);
				edge_vect.y = radius * sinf(cur_ang);

				float min_t1 = INFINITY;
				float min_angle;
				sf::Vector2f min_point;
				bool valid_ray = false;

				for(const auto& edge2 : edges)
				{
					Vector2<float> edge2_vect = Vector2<float>(edge2->end.x - edge2->start.x, edge2->end.y - edge2->start.y);

					if(fabs(edge2_vect.x - edge_vect.x) > 0.0f && fabs(edge2_vect.y - edge_vect.y) > 0.0f)
					{
						float t2 = (edge_vect.x * (edge2->start.y - center_pos.y) + (edge_vect.y * (center_pos.x - edge2->start.x))) / (edge2_vect.x*edge_vect.y - edge2_vect.y*edge_vect.x);
						float t1 = (edge2->start.x + edge2_vect.x*t2 - center_pos.x) / edge_vect.x;

						if(t1 > 0 && t2 >= 0 && t2 <= 1.0f)
						{
							if(t1 < min_t1)
							{
								min_t1 = t1;
								min_point.x = center_pos.x + edge_vect.x*t1;
								min_point.y = center_pos.y + edge_vect.y*t1;
								min_angle = atan2f(min_point.y - center_pos.y, min_point.x - center_pos.x);
								valid_ray = true;
							}
						}
					}
				}
				if(valid_ray){
					triangles.emplace_back(std::initializer_list<float>{min_point.x, min_point.y, min_angle});
				}
			}
		}
	}
	std::sort(
		triangles.begin(),
		triangles.end(),
		[&](const std::vector<float>& t1, const std::vector<float>& t2)
		{
			return t1[2] < t2[2];
		});

	return triangles;
}

int main()
{
	sf::ContextSettings settings;
	settings.antialiasingLevel = 8;
	sf::RenderWindow window(sf::VideoMode(width, height), "Light Casting", sf::Style::Close | sf::Style::Titlebar, settings);
	std::vector<std::vector<Cell>> grid = std::vector<std::vector<Cell>>(height/scl, std::vector<Cell>(width/scl));
	std::vector<std::shared_ptr<Edge>> edges;
	std::vector<std::vector<float>> triangles;

	for(size_t i = 1; i < grid.size()-1; i++)
	{
		grid[i][1].exists = true;
	}
	for(size_t i = 1; i < grid.size()-1; i++)
	{
		grid[i][grid.size()-2].exists = true;
	}

	for(size_t i = 1; i < grid[0].size()-1; i++)
	{
		grid[1][i].exists = true;
	}
	for(size_t i = 1; i < grid[0].size()-1; i++)
	{
		grid[grid[0].size()-2][i].exists = true;
	}

	FPS fps;
	float lastFPS;
	float currentFPS;

	// window.setFramerateLimit(10);

	while(window.isOpen()){
		sf::Event evt;
		while(window.pollEvent(evt)){
			if(evt.type == evt.Closed){
				window.close();
			}
		}
		currentFPS = fps.getFPS();
		if(currentFPS != lastFPS){
			std::cout << currentFPS << "\n";
			lastFPS = currentFPS;
		}

		window.clear();

		if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
		{
			sf::Vector2i mouse_pos = sf::Mouse::getPosition(window);

			if(mouse_pos.x >= 0 && mouse_pos.x < width && mouse_pos.y >= 0 && mouse_pos.y < height)
			{
				int pos[2] = {mouse_pos.x / scl, mouse_pos.y / scl};
				grid.at(pos[1]).at(pos[0]).exists = true;
				edges.clear();
				edges = make_edges(grid);
			}
			// std::cout << edges.size() << "\n";
		}

		if(sf::Mouse::isButtonPressed(sf::Mouse::Right))
		{
			sf::Vector2i mp = sf::Mouse::getPosition(window);
			triangles.clear();
			triangles = make_triangles(edges, mp);
			// std::cout << triangles.size() << "\n";

			sf::Vertex center;
			center.position = sf::Vector2f(mp.x, mp.y);
			std::vector<sf::Vertex> triangle_fan = {center};
			triangle_fan.reserve(triangles.size());

			for(const auto& data : triangles)
			{
				// sf::Vertex vertex(sf::Vector2f(data[0], data[1]));
				// vertex.position = sf::Vector2f(data[0], data[1]);
				triangle_fan.emplace_back(sf::Vector2f(data[0], data[1]));
			}
			sf::Vertex vertex;
			vertex.position = sf::Vector2f(triangles[1][0], triangles[1][1]);
			triangle_fan.push_back(vertex);
			window.draw(&triangle_fan[0], triangle_fan.size(), sf::TriangleFan);

		}

		draw_cells(window, grid);
		// draw_edges(window, edges);


		window.display();

		fps.update();

	}
}


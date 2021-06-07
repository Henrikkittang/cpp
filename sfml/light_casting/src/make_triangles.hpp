#pragma once
#include<memory>
#include<cmath>
#include<vector>
#include<algorithm>

#include "vector2.hpp"
#include "edges_and_walls.hpp"

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


#pragma once
#include <vector>
#include <array>

#include "structures.hpp"
#include "vector2.hpp"

class TrianglesGeneration
{
private:

    const std::vector<std::shared_ptr<Edge>>& m_edges; 
    const sf::Vector2i& m_center_pos;

public:

    TrianglesGeneration(const std::vector<std::shared_ptr<Edge>>& edges, const sf::Vector2i& center_pos) 
        : m_edges(edges), m_center_pos(center_pos)
    {}        

    std::vector<std::array<float, 3>> make_triangles()
    {
        const float radius = 1000.0f;
        std::vector<std::array<float, 3>> triangles;

        for(const auto& edge1 : m_edges)
        {
            for(int i = 0; i < 2; i++)
            {
                math::Vector2<float> edge_vect(0, 0);
                if(i == 0) edge_vect = math::Vector2<float>(edge1->start.x - m_center_pos.x, edge1->start.y - m_center_pos.y);
                if(i == 1) edge_vect = math::Vector2<float>(edge1->end.x   - m_center_pos.x, edge1->end.y   - m_center_pos.y);

                float base_angle = atan2f(edge_vect.y, edge_vect.x);

                for(int j = 0; j < 3; j++)
                {
                    float cur_ang = 0;
                    if(j == 0) cur_ang = base_angle - 0.0001f;
                    if(j == 1) cur_ang = base_angle;
                    if(j == 2) cur_ang = base_angle + 0.0001f;

                    edge_vect.x = radius * cosf(cur_ang);
                    edge_vect.y = radius * sinf(cur_ang);

                    float min_t1 = INFINITY;
                    float min_angle;
                    sf::Vector2f min_point;
                    bool valid_ray = false;

                    for(const auto& edge2 : m_edges)
                    {
                        math::Vector2<float> edge2_vect = math::Vector2<float>(edge2->end.x - edge2->start.x, edge2->end.y - edge2->start.y);

                        if(fabs(edge2_vect.x - edge_vect.x) > 0.0f && fabs(edge2_vect.y - edge_vect.y) > 0.0f)
                        {
                            float t2 = (edge_vect.x * (edge2->start.y - m_center_pos.y) + (edge_vect.y * (m_center_pos.x - edge2->start.x))) / (edge2_vect.x*edge_vect.y - edge2_vect.y*edge_vect.x);
                            float t1 = (edge2->start.x + edge2_vect.x*t2 - m_center_pos.x) / edge_vect.x;

                            if(t1 > 0 && t2 >= 0 && t2 <= 1.0f)
                            {
                                if(t1 < min_t1)
                                {
                                    min_t1 = t1;
                                    min_point.x = m_center_pos.x + edge_vect.x*t1;
                                    min_point.y = m_center_pos.y + edge_vect.y*t1;
                                    min_angle = atan2f(min_point.y - m_center_pos.y, min_point.x - m_center_pos.x);
                                    valid_ray = true;
                                }
                            }   
                        }
                    }
                    if(valid_ray){
                        triangles.push_back({min_point.x, min_point.y, min_angle});
                    }
                }
            }
        }
        std::sort(
            triangles.begin(),
            triangles.end(),
            [&](const std::array<float, 3>& t1, const std::array<float, 3>& t2)
            {
                return t1[2] < t2[2];
            }
        );

        auto it = std::unique(
            triangles.begin(),
            triangles.end(),
            [&](const std::array<float, 3>& t1, const std::array<float, 3>& t2)
            {
                return (fabs(t1[0] - t2[0])  < 1.0f) &&  (fabs(t1[1] - t2[1])  < 1.0f);
            }
        ); 
        triangles.resize(std::distance(triangles.begin(), it));

        return triangles;
    }



};
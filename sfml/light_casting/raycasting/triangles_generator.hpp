#pragma once
#include <vector>
#include <array>

#include "structures.hpp"
#include "vector2.hpp"

class TrianglesGeneration
{
private:

    const std::vector<std::shared_ptr<Edge>>& m_edges; 
    const math::Vector2& m_center_pos;

    std::vector<std::array<float, 3>> m_triangles;
    float m_radius = 1000.0f;


    void sort_triangles()
    {  
        std::sort(
            m_triangles.begin(),
            m_triangles.end(),
            [&](const std::array<float, 3>& t1, const std::array<float, 3>& t2)
            {
                return t1[2] < t2[2];
            }
        );        
    }

    void filter_triangels()
    {
        // std::cout << m_triangles.size() << ", ";
        auto it = std::unique(
            m_triangles.begin(),
            m_triangles.end(),
            [&](const std::array<float, 3>& t1, const std::array<float, 3>& t2)
            {
                return (fabs(t1[0] - t2[0])  < 0.1f) &&  (fabs(t1[1] - t2[1])  < 0.1f);
            }
        ); 
        m_triangles.resize(std::distance(m_triangles.begin(), it));
        // std::cout << m_triangles.size() << "\n";
    }

public:

    TrianglesGeneration(const std::vector<std::shared_ptr<Edge>>& edges, const math::Vector2& center_pos) 
        : m_edges(edges), m_center_pos(center_pos)
    {}        

    std::vector<std::array<float, 3>> make_triangles()
    {
        m_triangles.clear();

        for(const auto& edge1 : m_edges)
        {
            for(int i = 0; i < 2; i++)
            {
                math::Vector2 edge_vect;
                if(i == 0) edge_vect = edge1->start - m_center_pos;
                if(i == 1) edge_vect = edge1->end - m_center_pos;
 

                for(int j = 0; j < 3; j++)
                {
                    if(j == 0) edge_vect.rotateR(-0.0001f);
                    else if(j == 1) edge_vect.rotateR(0.0001f);
                    else if(j == 2) edge_vect.rotateR(0.0001f);

                    float min_t1 = INFINITY;
                    float min_angle;
                    math::Vector2 min_point;
                    bool valid_ray = false;

                    for(const auto& edge2 : m_edges)
                    {
                        math::Vector2 edge2_vect = edge2->end - edge2->start;

                        if( (edge2_vect - edge_vect).length() > 0.0f )
                        // if( !edge_vect.isParallel(edge2_vect) )
                        {
                            float t2 = (edge_vect.x * (edge2->start.y - m_center_pos.y) + edge_vect.y * (m_center_pos.x - edge2->start.x)) / (edge2_vect.x*edge_vect.y - edge2_vect.y*edge_vect.x);
                            float t1 = (edge2->start.x + edge2_vect.x*t2 - m_center_pos.x) / edge_vect.x;

                            if(t1 > 0 && t2 >= 0 && t2 <= 1.0f)
                            {
                                if(t1 < min_t1)
                                {
                                    min_t1 = t1;
                                    min_point = m_center_pos + edge_vect * t1;
                                    min_angle = atan2f(min_point.y - m_center_pos.y, min_point.x - m_center_pos.x);
                                    valid_ray = true;
                                }
                            }   
                        }
                    }
                    if(valid_ray)
                        m_triangles.push_back({min_point.x, min_point.y, min_angle});
                }
            }
        }
        
        sort_triangles();
        filter_triangels();

        return m_triangles;
    }



};
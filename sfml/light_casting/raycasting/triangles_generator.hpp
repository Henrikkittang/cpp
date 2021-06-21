#pragma once
#include <vector>
#include <array>

#include "structures.hpp"
#include "vector2.hpp"

class TrianglesGeneration
{
private:

    const std::vector<std::shared_ptr<Edge>>& m_edges; 
    const trig::Vector2i& m_center_pos;
    const std::vector<std::vector<Cell>>& m_grid; 
    float m_scl;

    std::vector<std::array<float, 3>> m_triangles;
    float m_radius = 1000.0f;   

private:

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

    TrianglesGeneration(
        const std::vector<std::shared_ptr<Edge>>& edges, 
        const std::vector<std::vector<Cell>>& grid,
        const trig::Vector2i& center_pos,
        int scl) 
        : m_edges(edges), m_grid(grid), m_center_pos(center_pos), m_scl(scl)
    {}        

    std::vector<std::array<float, 3>> make_triangles()
    {
        m_triangles.clear();

        for(const auto& edge1 : m_edges)
        {
            for(int i = 0; i < 2; i++)
            {
                trig::Vector2f ray_direction;
                if(i == 0) ray_direction = (trig::Vector2f)(edge1->start - m_center_pos);
                if(i == 1) ray_direction = (trig::Vector2f)(edge1->end - m_center_pos);
 

                for(int j = 0; j < 3; j++)
                {
                    if(j == 0) ray_direction.rotateR(-0.0001f);
                    else if(j == 1) ray_direction.rotateR(0.0001f);
                    else if(j == 2) ray_direction.rotateR(0.0001f);
                                        
                    // Form ray cast from player into scene
                    trig::Vector2f ray_start = ((trig::Vector2f)m_center_pos)/m_scl;
                    ray_direction.normalize();

                    // Lodev.org also explains this additional optimistaion (but it's beyond scope of video)
                    trig::Vector2f step_size = { 
                        std::abs(1.0f / ray_direction.x),  // fabs?
                        std::abs(1.0f / ray_direction.y) // fabs?
                    };

                    trig::Vector2i map_check = (trig::Vector2i)ray_start;
                    trig::Vector2i step;
                    trig::Vector2f ray_length1D;

                    // Establish Starting Conditions
                    if (ray_direction.x < 0){
                        step.x = -1;
                        ray_length1D.x = (ray_start.x - float(map_check.x)) * step_size.x;
                    }else{
                        step.x = 1;
                        ray_length1D.x = (float(map_check.x + 1) - ray_start.x) * step_size.x;
                    }

                    if (ray_direction.y < 0){
                        step.y = -1;
                        ray_length1D.y = (ray_start.y - float(map_check.y)) * step_size.y;
                    }else{
                        step.y = 1;
                        ray_length1D.y = (float(map_check.y + 1) - ray_start.y) * step_size.y;
                    }

                    // Perform "Walk" until collision or range check
                    bool tile_found = false;
                    float max_distance = m_grid[0].size() * m_grid.size();
                    float cur_distance = 0.0f;
                    while (!tile_found && cur_distance < max_distance)
                    {
                        // Walk along shortest path
                        if (ray_length1D.x < ray_length1D.y){
                            map_check.x += step.x;
                            cur_distance = ray_length1D.x;
                            ray_length1D.x += step_size.x;
                        }else{
                            map_check.y += step.y;
                            cur_distance = ray_length1D.y;
                            ray_length1D.y += step_size.y;
                        }

                        // Test tile at new test point
                        if (map_check.x >= 0 && map_check.x < m_grid[0].size() && map_check.y >= 0 && map_check.y < m_grid.size())
                            if(m_grid[map_check.y][map_check.x].exists == true)
                                tile_found = true;
                    }

                    // Calculate intersection location
                    if (tile_found)
                    {
                        trig::Vector2f vIntersection = ray_start + ray_direction * cur_distance;
                        // float angle = atan2f(vIntersection.y - m_center_pos.y, vIntersection.x - m_center_pos.x);
                        float angle = atan2f(ray_direction.y, ray_direction.x);
                        m_triangles.push_back({vIntersection.x*m_scl, vIntersection.y*m_scl, angle}); 
                    }
                }
            }
        }
   
        sort_triangles();
        filter_triangels();

        return m_triangles;
    }


};
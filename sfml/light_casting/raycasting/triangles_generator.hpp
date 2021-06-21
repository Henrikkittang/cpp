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
    const std::vector<std::vector<Cell>>& m_grid; 

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

    TrianglesGeneration(
        const std::vector<std::shared_ptr<Edge>>& edges, 
        const std::vector<std::vector<Cell>>& grid,
        const math::Vector2& center_pos) 
        : m_edges(edges), m_grid(grid), m_center_pos(center_pos)
    {}        

    std::vector<std::array<float, 3>> make_triangles()
    {
        m_triangles.clear();

        for(const auto& edge1 : m_edges)
        {
            for(int i = 0; i < 2; i++)
            {
                math::Vector2 rayDirection;
                if(i == 0) rayDirection = edge1->start - m_center_pos;
                if(i == 1) rayDirection = edge1->end - m_center_pos;
 

                for(int j = 0; j < 3; j++)
                {
                    if(j == 0) rayDirection.rotateR(-0.0001f);
                    else if(j == 1) rayDirection.rotateR(0.0001f);
                    else if(j == 2) rayDirection.rotateR(0.0001f);
                                        
                    // Form ray cast from player into scene
                    math::Vector2 vRayStart = m_center_pos / 20;
                    rayDirection.normalize();
                            
                    // Lodev.org also explains this additional optimistaion (but it's beyond scope of video)
                    // math::Vector2 vRayUnitStepSize = { abs(1.0f / rayDirection.x), abs(1.0f / rayDirection.y) };

                    math::Vector2 vRayUnitStepSize = { 
                        sqrt(1 + (rayDirection.y / rayDirection.x) * (rayDirection.y / rayDirection.x)), 
                        sqrt(1 + (rayDirection.x / rayDirection.y) * (rayDirection.x / rayDirection.y)) };
                    
                    
                    sf::Vector2i vMapCheck = {vRayStart.x, vRayStart.y};
                    math::Vector2 vRayLength1D;
                    sf::Vector2i vStep;

                    // Establish Starting Conditions
                    if (rayDirection.x < 0){
                        vStep.x = -1;
                        vRayLength1D.x = (vRayStart.x - float(vMapCheck.x)) * vRayUnitStepSize.x;
                    }else{
                        vStep.x = 1;
                        vRayLength1D.x = (float(vMapCheck.x + 1) - vRayStart.x) * vRayUnitStepSize.x;
                    }

                    if (rayDirection.y < 0){
                        vStep.y = -1;
                        vRayLength1D.y = (vRayStart.y - float(vMapCheck.y)) * vRayUnitStepSize.y;
                    }else{
                        vStep.y = 1;
                        vRayLength1D.y = (float(vMapCheck.y + 1) - vRayStart.y) * vRayUnitStepSize.y;
                    }

                    // Perform "Walk" until collision or range check
                    bool tile_found = false;
                    float max_distance = m_grid[0].size() * m_grid.size();
                    float cur_distance = 0.0f;
                    while (!tile_found && cur_distance < max_distance)
                    {
                        // Walk along shortest path
                        if (vRayLength1D.x < vRayLength1D.y){
                            vMapCheck.x += vStep.x;
                            cur_distance = vRayLength1D.x;
                            vRayLength1D.x += vRayUnitStepSize.x;
                        }else{
                            vMapCheck.y += vStep.y;
                            cur_distance = vRayLength1D.y;
                            vRayLength1D.y += vRayUnitStepSize.y;
                        }

                        // Test tile at new test point
                        if (vMapCheck.x >= 0 && vMapCheck.x < m_grid[0].size() && vMapCheck.y >= 0 && vMapCheck.y < m_grid.size())
                            if(m_grid[vMapCheck.y][vMapCheck.x].exists == true)
                                tile_found = true;
                    }

                    // Calculate intersection location
                    if (tile_found)
                    {
                        math::Vector2 vIntersection = vRayStart + rayDirection * cur_distance;
                        // float angle = atan2f(vIntersection.y - m_center_pos.y, vIntersection.x - m_center_pos.x);
                        float angle = atan2f(rayDirection.y, rayDirection.x);
                        m_triangles.push_back({vIntersection.x*20, vIntersection.y*20, atan2f(rayDirection.y, rayDirection.x)}); 
                    }
                                
                                
                    
                    // End

                }
            }
        }
        
        sort_triangles();
        filter_triangels();

        return m_triangles;
    }



};
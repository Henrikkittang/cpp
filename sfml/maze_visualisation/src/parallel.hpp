#pragma once
#include<future>

#include<SFML/Graphics.hpp>

#include "../maze_generation/prims.hpp"
#include "../maze_generation/backtracking.hpp"
#include "../maze_generation/division.hpp"
#include "../maze_generation/kruskal.hpp"

#include "../pathfinding/pathfinding_visualsation.hpp"
#include "../pathfinding/A_star.hpp"
#include "../pathfinding/H_star.hpp"
#include "../pathfinding/bfs.hpp"
#include "../pathfinding/dfs.hpp"

void instance(PathfindingVisualsation* pathfinding, int width, int height, size_t scl)
{
    sf::RenderWindow window(sf::VideoMode(width, height), "aMAZEing", sf::Style::Close | sf::Style::Titlebar);
    while(window.isOpen()){
        sf::Event evt;
        while(window.pollEvent(evt)){
            if(evt.type == evt.Closed){
                window.close();
            }
        }
        
        window.clear();

        pathfinding->step();
        pathfinding->draw(window, scl);

        window.display();
    }
}


template <typename MazeType, typename P1, typename P2>
class Paralell
{
private:
    std::vector<std::vector<int>> m_maze;
    P1 m_pathfinding1;
    P2 m_pathfinding2;
    size_t m_scl;

public:
    Paralell(int grid_w, int grid_h, size_t scl)
    {
        MazeType maze_generation(grid_w, grid_h);
	    m_maze = maze_generation.generate_maze(grid_w, grid_h);
    	m_pathfinding1 = P1(m_maze, {1, 1}, {grid_w-2, grid_h-2});
    	m_pathfinding2 = P2(m_maze, {1, 1}, {grid_w-2, grid_h-2});
        m_scl = scl;

    }


    void run()
    {
        // instance(&m_pathfinding1, m_maze[0].size()*m_scl, m_maze.size()*m_scl, m_scl);
        std::future<void> f1 = std::async(std::launch::async, instance, &m_pathfinding1, m_maze[0].size()*m_scl, m_maze.size()*m_scl, m_scl);
        std::future<void> f2 = std::async(std::launch::async, instance, &m_pathfinding2, m_maze[0].size()*m_scl, m_maze.size()*m_scl, m_scl);

    }
};






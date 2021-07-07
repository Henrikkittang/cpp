#pragma once
#include <vector>
#include <memory>
#include <cmath>
#include <array>
#include <queue>
#include <unordered_set>
#include <stack>

class Pathfinding
{
private:

    std::array<int, 2> m_start;
	std::array<int, 2> m_end;

        
    struct Node
    {
        std::array<int, 2> position;
        std::shared_ptr<Node> parent=nullptr;
        double h=0, g=0, f=0;

        Node(std::array<int, 2> pos)
            :position(pos) {}

    };

    struct NodeCompare
    {
        bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const
        {
            return a->f > b->f;
        }
    };

    struct VectorHash 
    {
        size_t operator()(std::array<int, 2> v) const 
        {
            return (v[0] + v[1])*(v[0] + v[1] + 1)/2 + v[1];
        }
    };
   
private:
    
	std::vector<std::array<int, 2>> find_neighbours(std::array<int, 2> pos)
    {
		std::vector<std::array<int, 2>> neighbors;
		neighbors.reserve(4);
        std::array<std::array<int, 2>, 4> sides =  {{ {0, -1}, {0, 1}, {-1, 0}, {1, 0} }};
    
        for(auto p : sides)
        {
            std::array<int, 2> cur_pos = {pos[0]+p[0], pos[1] + p[1]};
			if(!out_of_bounds(cur_pos[0], cur_pos[1]) && !is_wall(cur_pos[0], cur_pos[1]))
                neighbors.emplace_back(cur_pos);
        }
        return neighbors;
	}

    double manhattan_distance(std::array<int, 2> p1, std::array<int, 2> p2)
    {
        return abs(p2[0] - p1[0]) + abs(p2[1] - p2[1]);
    }

    std::vector<std::array<int, 2>> trace_path(std::shared_ptr<Node> cur)
    {
        std::vector<std::array<int, 2>> path;
        path.reserve(cur->g);
        while(cur != nullptr)
        {
            path.push_back(cur->position);
            cur = cur->parent;
        }
        return path;
    }

protected:

    virtual bool out_of_bounds(int x, int y) = 0;
    virtual bool is_wall(int x, int y) = 0;


public:
    
    Pathfinding() = default;

    Pathfinding(std::array<int, 2> start, std::array<int, 2> end)
        : m_start(start),
          m_end(end)
    {}

    std::vector<std::array<int, 2>> astar(int weight=1);
    std::vector<std::array<int, 2>> bfs();
    std::vector<std::array<int, 2>> dfs();

};



std::vector<std::array<int, 2>> Pathfinding::astar(int weight=1)
{
    std::shared_ptr<Node> cur_node = std::make_shared<Node>(m_start);
    std::unordered_set<std::array<int, 2>, VectorHash> visited;

    double heuristic = manhattan_distance(m_start, m_end);

    std::vector<std::shared_ptr<Node>>  queue_container; 
    queue_container.reserve(int(heuristic*1.5));
    auto open = std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare>(NodeCompare(), std::move(queue_container));
    open.push(cur_node);

    visited.reserve(int(heuristic*1.5));
    visited.emplace(m_start);

    while(cur_node->position != m_end && !open.empty())
    {
        cur_node = open.top(); open.pop();
        auto it = visited.find(cur_node->position);
        visited.erase(it);

        std::vector<std::array<int, 2>> neighbors = find_neighbours(cur_node->position);
        visited.emplace(cur_node->position);

        for(const auto& neighbors_pos : neighbors)
        {
            if(visited.find(neighbors_pos) != visited.end()) 
                continue;

            std::shared_ptr<Node> new_node = std::make_shared<Node>(neighbors_pos);
            new_node->g = cur_node->g + 1;
            new_node->h = manhattan_distance(neighbors_pos, m_end) * weight;
            new_node->f = new_node->g + new_node->h;
            new_node->parent = cur_node;

            open.emplace(std::move(new_node));
            visited.emplace(neighbors_pos);

        }
    }
    return trace_path(cur_node);
}

std::vector<std::array<int, 2>> Pathfinding::bfs()
{
    std::queue<std::shared_ptr<Node>> open;
    std::unordered_set<std::array<int, 2>, VectorHash> visited;

    std::shared_ptr<Pathfinding::Node> cur_node = std::make_shared<Node>(m_start);
	open.push(cur_node);

    if(cur_node->position != m_end)
    {
        cur_node = open.front();
        open.pop();
        visited.insert(cur_node->position);
        
        auto neigbours = find_neighbours(cur_node->position);

        for(const auto& neigbours_pos : neigbours)
        {
            if(visited.find(neigbours_pos) != visited.end())
                continue;

            auto new_node = std::make_shared<Node>(neigbours_pos);
            new_node->parent = cur_node;
            open.emplace(std::move(new_node));
            visited.emplace(neigbours_pos);
            
        }
    }
    return trace_path(cur_node);
}


std::vector<std::array<int, 2>> Pathfinding::dfs()
{
    std::stack<std::shared_ptr<Node>> open;
    std::unordered_set<std::array<int, 2>, VectorHash> visited;

    std::shared_ptr<Pathfinding::Node> cur_node = std::make_shared<Node>(m_start);
	open.push(cur_node);

    if(cur_node->position != m_end)
    {
        cur_node = open.top(); 
        open.pop();
        visited.insert(cur_node->position);
        
        auto neigbours = find_neighbours(cur_node->position);

        for(const auto& neigbours_pos : neigbours)
        {
            if(visited.find(neigbours_pos) != visited.end())
                continue;

            auto new_node = std::make_shared<Node>(neigbours_pos);
            new_node->parent = cur_node;
            open.emplace(std::move(new_node));
            visited.emplace(neigbours_pos);
        }
    }
    return trace_path(cur_node);
}
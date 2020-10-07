#pragma once

#include<vector>
#include<cmath>
#include<queue>
#include<memory>

class Node{
public:
    std::vector<int> position;
    std::shared_ptr<Node> parent = nullptr;
    double g = 0;
    double h = 0;
    double f = 0;
    Node(std::vector<int>& pos){
        position = pos;
    }
};

inline std::vector<std::vector<int>> find_children(const std::vector<std::vector<int>>& grid, std::vector<int>& pos){
    std::vector<std::vector<int>> children;
    children.reserve(8);

    int yPos = pos[1];
    int xPos = pos[0];

    if(grid[yPos - 1][xPos - 1] == 0) children.push_back({xPos - 1, yPos - 1});
    if(grid[yPos - 1][xPos] == 0) children.push_back({xPos - 1, yPos});
    if(grid[yPos - 1][xPos + 1] == 0) children.push_back({xPos - 1, yPos + 1});
    if(grid[yPos][xPos - 1] == 0) children.push_back({xPos, yPos - 1});
    //if(grid[yPos][xPos] == 0) children.push_back({xPos, yPos - 1});
    if(grid[yPos][xPos + 1] == 0) children.push_back({xPos, yPos + 1});
    if(grid[yPos + 1][xPos - 1] == 0) children.push_back({xPos + 1, yPos - 1});
    if(grid[yPos + 1][xPos] == 0) children.push_back({xPos + 1, yPos});
    if(grid[yPos + 1][xPos + 1] == 0) children.push_back({xPos + 1, yPos + 1});

    return children;
}

struct nodeCompare{
    bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const{
        return a->f > b->f;
   }
};

template <class Q>
void clearQueue(Q & q) {
    q = Q();
}

std::vector<std::vector<int>> findPath(const std::vector<std::vector<int>>& grid, std::vector<int> start, std::vector<int> end){

    std::shared_ptr<Node> current = std::make_shared<Node>(start);
    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, nodeCompare> open;
    std::vector<std::shared_ptr<Node>> closed;

    int heuristic = sqrt(pow(end[0] - start[0], 2) + pow(end[1] - start[1], 2));
    closed.reserve(heuristic);

    open.emplace(current);

    while(current->position != end){

        current = open.top();

        std::vector<std::vector<int>> children = find_children(grid, current->position);
        open.pop();
        closed.emplace_back(current);

        for(std::vector<int>& cur_child : children){
            std::shared_ptr<Node> new_node = std::make_shared<Node>(cur_child);
            new_node->g = current->g + 1;
            new_node->h = sqrt(pow(end[0] - cur_child[0], 2) + pow(end[1] - cur_child[1], 2));
            new_node->f = new_node->g + new_node->h;
            new_node->parent = current;

            open.emplace(new_node);
        }
    }

    std::vector<std::vector<int>> path;
    while(current != nullptr){
        path.emplace_back(current->position);
        current = current->parent;
    }
    return path;
}



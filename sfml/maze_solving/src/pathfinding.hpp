#pragma once

#include<iostream>
#include<cmath>
#include<vector>
#include<memory>
#include<set>
#include<queue>

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

std::vector<std::vector<int>> find_children(std::vector<std::vector<int>>& tgrid, std::vector<int>& pos){
    std::vector<std::vector<int>> children;
    children.reserve(4);

    for(int i = -1; i < 2; i++){
    for(int j = -1; j < 2; j++){
        if(abs(i) == abs(j)) continue;
        if(i != 0 || j != 0){
            std::vector<int> temp_pos = {pos[0] + j, pos[1] + i};
            if(temp_pos[0] >= 0 && temp_pos[0] < tgrid[0].size() && temp_pos[1] >= 0 && temp_pos[1] < tgrid.size()){
                    if(tgrid.at(temp_pos[1]).at(temp_pos[0]) == 0){
                    children.push_back(temp_pos);
                }
            }
        }
    }
    }

    return children;
}

struct NodeCompare{
    bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const{
        return a->f > b->f;
   }
};

std::vector<std::vector<int>> find_path(std::vector<std::vector<int>>& agrid, std::vector<int> start_pos, std::vector<int> end_pos){
	std::shared_ptr<Node> cur_node = std::make_shared<Node>(start_pos);

    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare> open_queue;
    std::set<std::vector<int>> open_set;
    std::set<std::vector<int>> closed_set;

    open_set.insert(start_pos);
    open_queue.push(cur_node);

    while(cur_node->position != end_pos){
        if(open_queue.size() == 0){
            std::vector<std::vector<int>> temp_vec = {{-1, -1}};
            return temp_vec;
        }

        cur_node = open_queue.top();
        open_queue.pop();
        open_set.erase(cur_node->position);

        auto childrenPos = find_children(agrid, cur_node->position);
        closed_set.insert(cur_node->position);

        for(auto& childPos : childrenPos){
            if((open_set.find(childPos) != open_set.end()) || (closed_set.find(childPos) != closed_set.end())) continue;

            std::shared_ptr<Node> child = std::make_shared<Node>(childPos);
            child->parent = cur_node;
            child->g = cur_node->g + 1;
            child->h = sqrt(pow(end_pos[0] - childPos[0], 2) + pow(end_pos[1] - childPos[1], 2));
            child->f = child->g + child->h;

            open_set.insert(childPos);
            open_queue.push(child);
        }
    }
    std::vector<std::vector<int>> path;
    while (cur_node->parent != nullptr){
        path.push_back(cur_node->position);
        cur_node = cur_node->parent;
    }
    return path;
}





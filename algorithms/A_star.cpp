#include<iostream>
#include<vector>
#include<memory>
#include<cmath>
#include<queue>
#include<map>

struct Node{
    std::vector<int> position;
    std::shared_ptr<Node> parent = nullptr;
    double h, g, f;
    Node(const std::vector<int>& pos){
        position = pos;
    }
};


struct nodeCompare{
    bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const{
        return a->f > b->f;
   }
};

inline std::vector<std::vector<int>> find_children(std::vector<std::vector<int>>& grid, std::vector<int>& pos){
    std::vector<std::vector<int>> children;
    children.reserve(8);

    int yPos = pos[1];
    int xPos = pos[0];

    for(int t = -1; t < 2; t++){
        for(int q = -1; q < 2; q++){
            if(t != 0 || q != 0){
                try{
                    if(grid.at(yPos + t).at(xPos + q) == 0){
                        std::vector<int> new_pos = {xPos + q, yPos + t};
                        children.push_back(new_pos);
                    }
                }catch(const std::out_of_range& oor){
					continue;
                }
            }
        }
    }

    return children;
}

std::vector<std::vector<int>> find_path(std::vector<std::vector<int>>& grid, const std::vector<int>& start, const std::vector<int>& end ){

    std::shared_ptr<Node> cur_node = std::make_shared<Node>(start);
    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, nodeCompare> open;
    open.push(cur_node);

    std::map<std::vector<int>, std::shared_ptr<Node>> open_map;
    std::map<std::vector<int>, std::shared_ptr<Node>> closed;
    open_map.insert(std::pair<std::vector<int>, std::shared_ptr<Node>>(cur_node->position, cur_node));


    while(cur_node->position != end){
        cur_node = open.top();
        open.pop();
        auto it = open_map.find(cur_node->position);
        open_map.erase(it);

        std::vector<std::vector<int>> children = find_children(grid, cur_node->position);
        closed.insert(std::pair<std::vector<int>, std::shared_ptr<Node>>(cur_node->position, cur_node));

        for(auto child_pos : children){
            if(closed.find(child_pos) != closed.end() || open_map.find(child_pos) != open_map.end()) continue;

            std::shared_ptr<Node> new_node = std::make_shared<Node>(child_pos);
            new_node->g = cur_node->g + 1;
            new_node->h = sqrt(pow(end[0] - child_pos[0], 2) + pow(end[1] - child_pos[1], 2));
            new_node->f = new_node->g + new_node->h;
            new_node->parent = cur_node;

            open.push(new_node);
            open_map.insert(std::pair<std::vector<int>, std::shared_ptr<Node>>(new_node->position, new_node));
        }
    }

    std::vector<std::vector<int>> path;
    while(cur_node != nullptr){
        path.push_back(cur_node->position);
        cur_node = cur_node->parent;
    }
    return path;
}

int main(){
    
    std::vector<std::vector<int>> maze(100, std::vector<int> (100, 0));

    std::vector<std::vector<int>> test = find_path(maze, {2, 2}, {98, 98});

}
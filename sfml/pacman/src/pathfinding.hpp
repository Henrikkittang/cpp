#include<cmath>
#include<vector>
#include<memory>
#include<unordered_set>
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

    if(pos[1]-1 >= 0){
        if(tgrid[pos[1]-1][pos[0]] == 0) children.emplace_back(std::initializer_list<int>({pos[0], pos[1]-1}));
    }
    if(pos[1]+1 < tgrid.size()){
        if(tgrid[pos[1]+1][pos[0]] == 0) children.emplace_back(std::initializer_list<int>({pos[0], pos[1]+1}));
    }
    if(pos[0]-1 >= 0){
        if(tgrid[pos[1]][pos[0]-1] == 0) children.emplace_back(std::initializer_list<int>({pos[0]-1, pos[1]}));
    }
    if(pos[0]+1 < tgrid[0].size()){
        if(tgrid[pos[1]][pos[0]+1] == 0) children.emplace_back(std::initializer_list<int>({pos[0]+1, pos[1]}));
    }

    return children;
}

struct NodeCompare{
    bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const{
        return a->f > b->f;
   }
};

struct VectorHasher {
    int operator()(const std::vector<int>& vect) const {
        // Cantor pairing function
        return ((vect[0] + vect[1])*(vect[0] + vect[1] + 1)/2) + vect[1];
    }
};


std::vector<std::vector<int>> find_path(std::vector<std::vector<int>>& agrid, std::vector<int> start_pos, std::vector<int> end_pos){
	std::shared_ptr<Node> cur_node = std::make_shared<Node>(start_pos);

    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare> open_queue;
    std::unordered_set<std::vector<int>, VectorHasher> open_set;
    std::unordered_set<std::vector<int>, VectorHasher> closed_set;

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
            // child->h = sqrt(pow(end_pos[0] - childPos[0], 2) + pow(end_pos[1] - childPos[1], 2));
            child->h = abs(end_pos[0] - childPos[0]) + abs(end_pos[1] - childPos[1]);
            child->f = cur_node->g + child->h;

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


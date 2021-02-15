#include<vector>
#include<memory>
#include<cmath>
#include<queue>
#include<unordered_set>
#include<array>

struct Node{
    std::array<int, 2> position;
    std::shared_ptr<Node> parent=nullptr;
    double h=0, g=0, f=0;

    Node(std::array<int, 2> pos)
        :position(pos) {}

};


struct NodeCompare{
    bool operator()(const std::shared_ptr<Node>& a, const std::shared_ptr<Node>& b ) const{
        return a->f > b->f;
   }
};


struct VectorHash {
    size_t operator()(std::array<int, 2> v) const {
		return (v[0] + v[1])*(v[0] + v[1] + 1)/2 + v[1];
    }
};


std::vector<std::array<int, 2>> find_children(const std::vector<std::vector<int>>& grid, std::array<int, 2> pos){
    std::vector<std::array<int, 2>> children;
    children.reserve(8);


    for(int t = -1; t < 2; t++){
        for(int q = -1; q < 2; q++){
            if(t != 0 || q != 0){
                if(t==0 && q == 0) continue;
				// if(abs(t) == abs(q)) continue;

                std::array<int, 2> cur_pos = {pos[0]+q, pos[1]+t};
                if(cur_pos[0] >= 0 && cur_pos[0] < grid[0].size() && cur_pos[1] >= 0 && cur_pos[1] < grid.size())
                {
                    if(grid[cur_pos[1]][cur_pos[0]] == 0)
                    {
                        children.emplace_back(cur_pos);
                    }
                }
            }
        }
    }

    return children;
}

std::vector<std::vector<int>> find_path(const std::vector<std::vector<int>>& grid, std::array<int, 2> start, std::array<int, 2> end ){

	double heuristic = sqrt(pow(end[0]-start[0], 2) + pow(end[1] - start[1], 2) );

	// Container for queue
	std::vector<std::shared_ptr<Node>> queue_container;
	queue_container.reserve(int(heuristic*1.5));

	// Makes queue
    std::shared_ptr<Node> cur_node = std::make_shared<Node>(start);
    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node>>, NodeCompare> open(NodeCompare(), std::move(queue_container));
    open.push(cur_node);

	// Makes open and closed set
    std::unordered_set<std::array<int, 2>, VectorHash> open_set;
    std::unordered_set<std::array<int, 2>, VectorHash> closed_set;
	closed_set.reserve(int(heuristic*1.5));
	open_set.reserve(int(heuristic*1.5));
    open_set.emplace(cur_node->position);

    while(cur_node->position != end){
		if(open_set.empty()) return {};

        cur_node = open.top(); open.pop();
        auto it = open_set.find(cur_node->position);
        open_set.erase(it);

        std::vector<std::array<int, 2>> children = find_children(grid, cur_node->position);
		closed_set.emplace(cur_node->position);

        for(const auto& child_pos : children){
            if(closed_set.find(child_pos) != closed_set.end() || open_set.find(child_pos) != open_set.end()) continue;

            std::shared_ptr<Node> new_node = std::make_shared<Node>(child_pos);
            new_node->g = cur_node->g + 1;
            new_node->h = sqrt(pow(end[0] - child_pos[0], 2) + pow(end[1] - child_pos[1], 2));
            // new_node->h = abs(child_pos[0] - end[0]) + abs(child_pos[1] - end[1]);
			new_node->f = new_node->g + new_node->h;
			new_node->parent = cur_node,

            open.emplace(std::move(new_node));

            open_set.emplace(child_pos);
        }
    }

    std::vector<std::vector<int>> path;
	path.reserve(heuristic);
    while(cur_node != nullptr){
        path.push_back({cur_node->position[0], cur_node->position[1]});
        cur_node = cur_node->parent;
    }
    return path;
}


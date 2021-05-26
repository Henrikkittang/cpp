#include<vector>
#include<memory>
#include<cmath>
#include<queue>
#include<unordered_set>
#include<array>

struct Node{
    std::array<int, 2> position;
    Node* parent=nullptr;
    double  g=0, h=0, f=0;

    Node(std::array<int, 2> pos)
        :position(pos)
		{}

	Node(std::array<int, 2> pos, Node* par, double ag, double ah, double af)
        :position(pos), parent(par), g(ag), h(ah), f(af)
		{}

};


struct NodeCompare{
    bool operator()(Node* a, Node* b ) const{
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
    children.reserve(4);


    for(int t = -1; t < 2; t++){
        for(int q = -1; q < 2; q++){
            if(t != 0 || q != 0){
                if(abs(t) == abs(q)) continue;

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

std::vector<std::array<int, 2>> find_path(const std::vector<std::vector<int>>& grid, std::array<int, 2> start, std::array<int, 2> end ){

	double heuristic = sqrt(pow(end[0]-start[0], 2) + pow(end[1] - start[1], 2) );

	// Makes the container for the dynamicly allocated nodes
	std::vector<Node> nodes;
	nodes.reserve(int(heuristic*10));
	nodes.emplace_back(start);
    Node* cur_node = &nodes.back();

	// Container for queue
	std::vector<Node*> queue_container;
	queue_container.reserve(int(heuristic*1.5));

	// Makes queue
    std::priority_queue<Node*, std::vector<Node*>, NodeCompare> open(NodeCompare(), std::move(queue_container));
    open.push(cur_node);

	// Makes open and closed set
    std::unordered_set<std::array<int, 2>, VectorHash> open_set;
    std::unordered_set<std::array<int, 2>, VectorHash> closed_set;
	closed_set.reserve(int(heuristic*1.5));
	open_set.reserve(int(heuristic*1.5));
    open_set.insert(cur_node->position);

    while(cur_node->position != end){
		if(open_set.empty()) return {};

        cur_node = open.top(); open.pop();

        auto it = open_set.find(cur_node->position);
        open_set.erase(it);

        std::vector<std::array<int, 2>> children = find_children(grid, cur_node->position);
		closed_set.insert(cur_node->position);

        for(const auto& child_pos : children){
            if(closed_set.find(child_pos) != closed_set.end() || open_set.find(child_pos) != open_set.end()) continue;

            double g = cur_node->g + 1;
            double h = sqrt(pow(end[0] - child_pos[0], 2) + pow(end[1] - child_pos[1], 2));
            double f = g + h;

			nodes.emplace_back(child_pos, cur_node, g, h, f);

			Node* new_node = &nodes.back();
            open.push(new_node);
            open_set.insert(child_pos);
        }
    }

    std::vector<std::array<int, 2>> path;
	path.reserve(heuristic);
    while(cur_node != nullptr){
        path.emplace_back(cur_node->position);
        cur_node = cur_node->parent;
    }
    return path;
}


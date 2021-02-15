#include<vector>
#include<array>
#include<cmath>
#include<memory>

struct Node{
    std::array<int, 2> position;
    Node* parent = nullptr;
    double h=0, g=0, f=0;
    Node(const std::array<int, 2>& pos)
        : position(pos) {}
};


std::vector<std::array<int, 2>> find_children(const std::vector<std::vector<int>>& grid, const std::array<int, 2>& pos){

    std::vector<std::array<int, 2>> children;
    children.reserve(8);

    for(int t = -1; t < 2; t++){
        for(int q = -1; q < 2; q++){
            if(t != 0 || q != 0){
                if(abs(t) == abs(q)) continue;

                std::array<int, 2> cur_pos = {pos[0]+q, pos[1]+t};
                if(cur_pos[0] >= 0 && cur_pos[0] < grid[0].size() && cur_pos[1] >= 0 && cur_pos[1] < grid.size())
                {
                    if(grid[cur_pos[1]][cur_pos[0]] == 0)
                    {
                        children.push_back(cur_pos);
                    }
                }
            }
        }
    }

    return children;
}

bool search_vect(const std::vector<std::unique_ptr<Node>>& set, const std::array<int, 2>& pos)
{
    for(const auto& node : set)
    {
        if(node->position[0] == pos[0] && node->position[1] == pos[1]) return true;
    }
    return false;
}

std::vector<std::array<int, 2>> find_path(const std::vector<std::vector<int>>& grid, const std::array<int, 2>& start, const std::array<int, 2>& end){

	std::vector<std::unique_ptr<Node>> open_vect;
    std::vector<std::unique_ptr<Node>> closed_vect;
    open_vect.push_back( std::move(std::make_unique<Node>(start)) );

	Node* cur_node = open_vect.back().get();
    while(cur_node->position != end){

		auto lowest = open_vect.begin();
        for(auto it = open_vect.begin()+1; it != open_vect.end(); it++ )
        {
            if((*it)->f < (*lowest)->f)
            {
				lowest  = it;
            }
        }

		closed_vect.push_back(std::move((*lowest)));
        open_vect.erase(lowest);
		cur_node = closed_vect.back().get();

        std::vector<std::array<int, 2>> children = find_children(grid, cur_node->position);

        for(const auto& child_pos : children){
            // if(closed_vect.find(child_pos) != closed_vect.end() || open_vect.find(child_pos) != open_vect.end()) continue;
            if(search_vect(closed_vect, child_pos) || search_vect(open_vect, child_pos))
            {
                continue;
            }

			std::unique_ptr<Node> new_node = std::make_unique<Node>(child_pos);

            new_node->g = cur_node->g + 1;
            new_node->h = abs(end[0] - child_pos[0]) + abs(end[1] - child_pos[1]);
            new_node->f = new_node->g + new_node->h;
            new_node->parent = cur_node;

            // double h = sqrt(pow(end[0] - child_pos[0], 2) + pow(end[1] - child_pos[1], 2));

            open_vect.push_back( std::move(new_node) );

        }
    }

    std::vector<std::array<int, 2>> path;
    while(cur_node != nullptr){
        path.push_back(cur_node->position);
        cur_node = cur_node->parent;
    }

    return path;
}
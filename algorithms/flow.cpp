#include<iostream>
#include<vector>
#include <map> 
#include <iterator> 

inline void logPos(std::vector<int> pos){
    std::cout << pos[0] << ", " << pos[1] << "\n";
}

std::vector<std::vector<int>> find_children(std::vector<std::vector<int>>& grid, std::vector<int>& pos){
    std::vector<std::vector<int>> children;
    children.reserve(8);

    int yPos = pos[1];
    int xPos = pos[0];
    int type = grid[yPos][xPos];

    for(int i = -1; i <= 1; i++){
        for(int j = -1; j <= 1; j++){
            if(i == 0 && j == 0) continue;

            try { 
                if(grid.at(yPos + i).at(xPos + j) == type){
                    children.push_back({xPos + j, yPos + i});
                }
            }
            catch(const std::out_of_range& oor) {
                continue; 
            }            
        }
    }

    return children;
}

inline bool isPos(std::vector<int>& pos, std::multimap<int, std::vector<int>>& map){
    // Checks if the position exist in in the given multimap 
    // Here comes the point of mulitmap into play, they have fast lookup comared to vectors, N vs Log(N)

    std::multimap <int, std::vector<int>> :: iterator itr =  map.find(pos[0] + pos[1]);
    for(auto  itr =  map.find(pos[0] + pos[1]); itr != map.end(); itr++){
        if(itr->second == pos){
            return true;
        }
    }    
    return false;
}

inline void removeElem(std::multimap<int, std::vector<int>>& map, std::vector<int>& pos){
    // Removes an element from a multimap by value

    std::multimap <int, std::vector<int>> :: iterator itr =  map.find(pos[0] + pos[1]);

    while(itr->second != pos){
        itr++;
    }
    map.erase(itr);
}

std::vector<std::vector<int>> flow(std::vector<std::vector<int>>& grid, const std::vector<int>& startPos){

    std::multimap<int, std::vector<int>> open;       // contains the pos that are to be considered
    std::multimap<int, std::vector<int>> closed;     // contains the considered ones
    std::vector<std::vector<int>> free;              // contains the same as closed, only as a vector instead

    // The key is the sum of the x and y value is the coordinate
    open.insert(std::pair<int, std::vector<int>>(startPos[0] + startPos[1], startPos) );
    free.push_back(startPos);

    while(open.size() > 0){

        std::vector<int> cur_pos = open.begin()->second;  // gets the first value of open

        std::vector<std::vector<int>> children = find_children(grid, cur_pos);  // finds the children of cur_pos
        closed.insert(std::pair<int, std::vector<int>>(cur_pos[0] + cur_pos[1], cur_pos) ); // Adds cur_node to closed, it has now been considered
        removeElem(open, cur_pos);  // removes cur_node from open

        for(std::vector<int>& child : children){
            // loops over the children and checks if they have allready been added to either open or closed
            if(isPos(child, closed) || isPos(child, open)) continue;

            // if not, then add them to open
            open.insert(std::pair<int, std::vector<int>>(child[0] + child[1], child) );
            free.push_back(child);
        }   
   }

    return free;
}


int main(){
    std::vector<std::vector<int>> grid(100, std::vector<int> (100, 0));

    auto test = flow(grid, {0, 0});
    
}










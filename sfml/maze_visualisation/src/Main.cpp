#include<iostream>
#include<vector>

#include<SFML/Graphics.hpp>

#include  "parallel.hpp"

int main(){
    const int width = 800;
    const int height = 800;
    const int scl = 5;

	
	// window.setFramerateLimit(60);

	srand((int)time(0));

	int grid_w  = width / scl;
	int grid_h = height / scl;

    Paralell<Prims, BFS, DFS> parallel(grid_w, grid_h, scl);

    parallel.run();
}


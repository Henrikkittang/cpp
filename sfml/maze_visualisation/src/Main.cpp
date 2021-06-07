#include<iostream>
#include<vector>

#include<SFML/Graphics.hpp>

#include  "parallel.hpp"
#include "../maze_generation/division.hpp"


int main(){
    const int width = 800;
    const int height = 800;
    const int scl = 10;

	
	srand((int)time(0));

	int grid_w  = width / scl;
	int grid_h = height / scl;


    

    
    // Paralell<Backtracking, AStar, HStar> parallel(grid_w, grid_h, scl);
    // parallel.run();

    Division maze_generation(grid_w, grid_h);
    sf::RenderWindow window(sf::VideoMode(width, height), "aMAZEing", sf::Style::Close | sf::Style::Titlebar);
    while(window.isOpen()){
        sf::Event evt;
        while(window.pollEvent(evt)){
            if(evt.type == evt.Closed){
                window.close();
            }
        }
        
        window.clear();

        maze_generation.step();
        maze_generation.draw(window, scl);

        window.display();
    }
}


#pragma once
#include<stack>

#include "maze_visualsation.hpp"

struct Dimensions
{
    int x, y, width, height;
    Dimensions(int x, int y, int width, int height)
        :x(x), y(y), width(width), height(height)
    {}
};


class Division : public MazeVisualsation
{
private:

	std::stack<Dimensions> m_dimensions;
	bool m_vertical_wall = true;


	int even_rand_range(int min, int max)
	{
		return min + (2 * rand()) % (max - min);
	}

    void make_vertical_wall(int x, int min, int height)
    {
        // std::cout << "Vertical: ";  
        // std::cout << x << ", ";  
        // std::cout << min << ", "; 
        // std::cout << height << "\n"; 
        for(int y = min; y < height; y++)
            m_map.at(y).at(x) = PASSAGE;
        
        int y = even_rand_range(min, height);
        m_map.at(y).at(x) = WALL;
    }

    void make_horizontal_wall(int y, int min, int width)
    {
        // std::cout << "Horizontal: ";  
        // std::cout << y << ", ";  
        // std::cout << min << ", "; 
        // std::cout << width << "\n"; 

        for(int x = min; x < width; x++)
            m_map.at(y).at(x) = PASSAGE;
        int x = even_rand_range(min, width);
        m_map.at(y).at(x) = WALL;
    }

public:

	Division(int width, int height)
	{
		init(width+1, height+1);
		m_dimensions.push({0, 0, width, height});
	}

	void step() override
	{
		if(!m_dimensions.empty())
        {
            auto dims = m_dimensions.top(); 
            m_dimensions.pop();
            // std::cout << dims.x << ", ";  
            // std::cout << dims.y << ", ";  
            // std::cout << dims.width << ", ";  
            // std::cout << dims.height << "\n";  


            if(dims.width < 2 || dims.height < 2) return;
            
            if(m_vertical_wall){
                int width = even_rand_range(1, dims.width);
                make_vertical_wall(dims.x+width, dims.y, dims.height);
                m_dimensions.push({dims.x, dims.y, width, dims.height});
                m_dimensions.push({dims.x+width, dims.y, dims.width-width, dims.height});
            }else{
                int height = even_rand_range(1, dims.height);
                make_horizontal_wall(dims.y+height, dims.x, dims.width);
                m_dimensions.push({dims.x, dims.y, dims.width, height});
                m_dimensions.push({dims.x, dims.y+height, dims.width, dims.height-height});
            }
            m_vertical_wall = !m_vertical_wall;
        }
	}

	std::vector<std::vector<int>> generate_maze(size_t width, size_t height) override
	{
		return {};
	}


};
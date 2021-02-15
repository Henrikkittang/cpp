#include<iostream>
#include<random>
#include<deque>
#include<vector>


#include<SFML/Graphics.hpp>

#include "temp.hpp"


void print_pos(std::array<int, 2> pos)
{
	std::cout << pos[0] << ", " << pos[1] << "\n";
}

void test()
{
	std::vector<std::vector<int>> grid( 10 , std::vector<int> (10, 0));

	{
		auto path = find_path(grid, {1, 1}, {9, 9});
		for(const auto& p : path)
		{
			print_pos(p);
		}
	}
}


int main()
{

	test();


	// std::cout << "Number of nodes not released: " << mynodes << "\n";
	// std::cout << "Size of Node: " << sizeof(Node) << "\n";
}


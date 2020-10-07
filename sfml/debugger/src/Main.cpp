#include<iostream>

#include "memory_tracker.hpp"
#include "ll.hpp"

int main()
{

    std::cout << "size of node: " << sizeof(DoublyNode<int>) << "\n";
	{
		DoublyLinkedList<int> arr;

		arr.push_back(5);
		arr.push_back(6);
		arr.push_back(7);
		arr.push_back(8);
		arr.push_back(8);
		arr.push_back(8);
		arr.push_back(8);
		arr.push_back(10);
		arr.push_back(8);
		arr.push_back(8);
		arr.push_back(8);

		for(auto it = arr.begin(); it.not_null(); ++it)
		{
			std::cout << it->data << "\n";
		}

		std::cout << "Current byte used: " << memory_tracker.current() << " bytes \n";
	}
	std::cout << "Current byte used: " << memory_tracker.current() << " bytes \n";

    std::cout << "No crash! \n";
}






#include <iostream>

#include "thread_pool.hpp"


int main()
{
    async::ThreadPool pool = {4};
    std::cout << "Program Finished \n";
}
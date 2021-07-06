#include <iostream>
#include <chrono>


#include "thread_pool.hpp"

std::mutex mutex;

int random()
{
    auto val = new char[0x10000];
    auto num = reinterpret_cast<unsigned long long>(val);
    delete[] val;
    num = num / 0x1000 % 500;
    return num;
}

void work(int time)
{
    std::this_thread::sleep_for (std::chrono::milliseconds(time));

    mutex.lock();
    std::cout << "Random sleep: " << time << " --- ";
    std::cout << "Thread id: " << std::this_thread::get_id() << "\n";
    mutex.unlock();

}

int main()
{
    {
        // std::async(std::launch::async, work, 5);
        ThreadPool pool  = {4};
        pool.submit([]{ work(random()); });
        pool.submit([]{ work(random()); });
        pool.submit([]{ work(random()); });
        pool.submit([]{ work(random()); });
        pool.submit([]{ work(random()); });
        pool.submit([]{ work(random()); });

    }   
   
    std::cout << "Program Finished \n";
}
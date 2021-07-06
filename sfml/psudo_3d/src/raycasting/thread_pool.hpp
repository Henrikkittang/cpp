#pragma once
#include <vector>
#include <functional>
#include <thread>
#include <future>
#include <condition_variable>
#include <queue>

class ThreadPool
{
private:
    using Task = std::function<void()>;

    std::vector<std::thread> m_threads;
    std::queue<Task> m_tasks;

    std::condition_variable m_event;
    std::mutex m_mutex;
    bool m_done;

private:

    void task()
    {
        while(true)
        {
            Task task;
            {
                std::unique_lock<std::mutex> lock(m_mutex);
                m_event.wait(lock, [=] { return m_done || !m_tasks.empty(); });

                if(m_done && m_tasks.empty())
                    break;

                task = std::move(m_tasks.front());
                m_tasks.pop();
            }
            task();
        } 
    }

    void start(uint32_t number_of_threads) 
    {
        for(int i = 0; i < number_of_threads; i++)
            m_threads.emplace_back(&ThreadPool::task, this);
    }


    void stop() noexcept
    {   
        {
            std::unique_lock<std::mutex> lock(m_mutex);
            m_done = true;
        }

        m_event.notify_all();

        for(auto& thread : m_threads)
            thread.join();
    }

public:

    ThreadPool(uint32_t number_of_threads=std::thread::hardware_concurrency())
        : m_done(false)
    {
        start(number_of_threads);
    }


    ~ThreadPool()
    {
        stop();
    }

    template<class T>
    auto submit(T task)->std::future<decltype(task())>
    { 
        auto wrapper = std::make_shared<std::packaged_task<decltype(task())()>>(std::move(task));
        {
            std::unique_lock<std::mutex> lock(m_mutex);
            m_tasks.emplace([=]
            {
                (*wrapper)();
            });
        }

        m_event.notify_one();
        return wrapper->get_future();
    }

    int number_of_threads() const { return m_threads.size(); }
};




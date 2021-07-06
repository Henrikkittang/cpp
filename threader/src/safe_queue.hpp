#include <queue>
#include <mutex>
#include <condition_variable>

// A threadsafe-queue.
template <class T>
class SafeQueue
{
private:
    std::queue<T> m_queue;
    mutable std::mutex m_mutex;
    std::condition_variable m_condition;

public:
    SafeQueue() {}

    ~SafeQueue() {}

    // Add an element to the queue.
    void push(T element)
    {
        std::lock_guard<std::mutex> lock(m_mutex);
        m_queue.push(element);
        m_condition.notify_one();
    }

    T front()
    {
        std::lock_guard<std::mutex> lock(m_mutex);
        return m_queue.front();
    }

    bool empty()
    {
        std::lock_guard<std::mutex> lock(m_mutex);
        return m_queue.empty();
    }

    // Get the "front"-element.
    // If the queue is empty, wait till a element is avaiable.
    T pop()
    {
        std::unique_lock<std::mutex> lock(m_mutex);

        // Release lock as long as the wait and reaquire it afterwards.
        while(m_queue.empty())
            m_condition.wait(lock);
        
        T value = m_queue.front();
        m_queue.pop();
        return value;
    }
};
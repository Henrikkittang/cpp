#pragma once

#include<cmath>

template<typename T, size_t S>
struct SmallArray
{
    T container[S];
    size_t size = 0;
    SmallArray<T, S>* next = nullptr;
    SmallArray<T, S>* prev = nullptr;
};


template<typename T, size_t S>
class LinkedArray
{
private:
    SmallArray<T, S>* m_head = nullptr;
    SmallArray<T, S>* m_tail = nullptr;
    size_t m_size = 0;
    size_t m_capacity = 0;

public:

    void push_back(const T& data)
    {
        if(m_head == nullptr){ 
            m_head = new SmallArray<T, S>;
            m_tail = m_head; 
            m_capacity += S;   
        }else if (m_size >= m_capacity){
            SmallArray<T, S>* temp = new SmallArray<T, S>;
            m_tail->next = temp;
            m_tail = m_tail->next;
            m_capacity += S;   
        }
        // new (&m_tail->container[m_tail->size++]) T(data);
        m_tail->container[m_tail->size++] = data;
        m_size++;
    }

    template<typename... Args>
    T& emplace_back(Args&&... args)
    {
        if(m_head == nullptr){ 
            m_head = new SmallArray<T, S>;
            m_tail = m_head; 
            m_capacity += S;   
        }else if (m_size >= m_capacity){
            SmallArray<T, S>* temp = new SmallArray<T, S>;
            m_tail->next = temp;
            m_tail = m_tail->next;
            m_capacity += S;   
        }
        m_size++;
        new (&m_tail->container[m_tail->size++]) T(std::forward<Args>(args)...);
        return m_tail->container[m_tail->size-1];
    }


    void pop_back()
    {
        if(m_head != nullptr){
            if(m_tail->size > 0){
                m_tail->container[--m_tail->size].~T();
            }else{
                SmallArray<T, S>* temp = m_tail;
                m_tail = m_tail->prev;
                if(m_tail != nullptr) m_tail->next = nullptr;
                delete temp;
            }
        }
    }

    const size_t capacity() const { return m_capacity; }
    constexpr size_t array_capacity() const { return S; }
    const size_t size() const { return m_size; }

};




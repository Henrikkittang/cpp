#pragma once

#include "allocator.hpp"

template<typename T>
class DynamicArray
{
private:
    T* m_container = nullptr;
    size_t m_size = 0;
    size_t m_capacity = 0;
    Allocator<T> m_allocator;

    void allocate(size_t new_capcity)
    {
        T* new_container = m_allocator.allocate(new_capcity);

        for(size_t i = 0; i < m_size; i++)
        {
            // new(&m_container[i])T(std::move(m_container[i]));
            m_allocator.construct(&m_container[i], std::move(m_container[i]));
        }

        m_allocator.destroy(m_container, m_size);
        m_allocator.deallocate(m_container, m_capacity);

        m_container = new_container;
        m_capacity = new_capcity;

    }

public:
    DynamicArray()
    {
        allocate(2);
    }
    
    DynamicArray(const DynamicArray& other)
    {
        memccpy(this, &other, sizeof(DynamicArray));     
    }

    DynamicArray(DynamicArray&& other)
    {
        m_container = other.m_container;
        m_size = other.m_size;
        m_capacity = other.m_capacity;
        m_allocator = other.m_allocator;

        other.m_container = nullptr;
    }

    DynamicArray& operator=(DynamicArray&& other)
    {
        if(this != &other)
        {
            m_allocator.destroy(m_container, m_size);
            m_allocator.deallocate(m_container, m_capacity);

            m_container = other.m_container;            
            m_capacity = other.m_capacity;
            m_size = other.m_size;
            m_allocator = other.m_allocator

            other.m_container = nullptr;
        }
        return *this;
    }

    ~DynamicArray()
    {
        m_allocator.destroy(m_container, m_size);
        m_allocator.deallocate(m_container, m_capacity);
    }

    T* begin(){ return (&m_container[0]); }
    const T* begin() const{ return (&m_container[0]); }
    T* end(){ return (&m_container[m_size]); }
    const T* end() const{ return (&m_container[m_size]); }


    T& operator[](size_t idx) { return m_container[idx]; }
    const T& operator[](size_t idx) const { return m_container[idx]; }

    T& at(size_t idx)
    {
        if(idx >= m_size) throw "Index out of range!";
        else  m_container[idx];
    }


    const T& at(size_t idx) const
    {
        if(idx >= m_size) throw "Index out of range!";
        else  m_container[idx];
    }

    void reserve(size_t new_capacity)
    {
        if(new_capacity > m_capacity ) allocate(new_capacity);
    }

    const size_t size() const { return m_size; }

    void push_back(const T& new_element)
    {
        if(m_size >= m_capacity)
        {
            allocate(m_capacity*2);
        }
        m_container[m_size++] = new_element;
    }

    template<typename... Args>
    T& emplace_back(Args&&... args)
    {
        if(m_size >= m_capacity)
        {
            allocate(m_capacity*2);
        }
        // new(&m_container[m_size])T(std::forward<Args>(args)...);
        // m_allocator.construct(&m_container[m_size], std::forward<Args>(args)...);

        m_allocator.construct(&m_container[m_size], args...);
        return m_container[m_size++];
    }

    void shrink_to_fit()
    {
        m_allocator.deallocate(&m_container[m_size], m_capacity-m_size);
        m_capacity = m_size;
    }

    void pop_back()
    {
        if(m_size > 0)
        {
            m_allocator.destroy(&m_container[--m_size]);
        }
    }

    void clear()
    {
        m_allocator.destroy(m_container, m_size);
        m_size = 0;
    }
};





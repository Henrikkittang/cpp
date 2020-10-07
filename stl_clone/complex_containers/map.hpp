#pragma once
#include "..\base_containers\linked_list.hpp"




template<typename KeyType, typename DataType, int Capacity, typename HashType>
class StaticMap
{
private: 
    struct Pair
    {
        bool m_used = false;
        KeyType m_key = -1;
        DataType m_data = -1;
    };

    int m_size = 0;
    int m_capacity = Capacity;
    Pair m_container[Capacity];
    Pair buffer;
    HashType hash; 

    int hasher(KeyType k)
    {
        return hash(k, m_capacity);
    }

    Pair* find(KeyType k)
    {
        int index = hasher(k);
        int org_idx = index;
        while(true){
            if(index >= m_capacity) index = 0;
            if(m_container[index].m_used && m_container[index].m_key == k){
                return &(m_container[index]);
            }
            index++;
            if(index == org_idx) return &buffer;
        }
    }

public:
    StaticMap()
    {
    }

    void insert(KeyType k, DataType d)
    {
        int index = hasher(k);
        int org_idx = index;
        while(true){
            if(index >= m_capacity) index = 0;
            if(m_container[index].m_used && m_container[index].m_key == k){
                return;
            }else if(!m_container[index].m_used){
                m_container[index].m_used = true;
                m_container[index].m_key = k;
                m_container[index].m_data = d;
                m_size++;
                return;
            }
            index++;
            if(index == org_idx) return;
        }
    }

    DataType get(KeyType k)
    {
        return find(k)->m_data;
    }

    DataType set(KeyType k, DataType d)
    {
        find(k)->m_data = d;
    }

    void erease(KeyType k)
    {
        find(k)->m_used = false;
        m_size++;
    }

    bool contains(KeyType k)
    {
        int index = hasher(k);
        int org_idx = index;
        while(true){
            if(index > m_capacity) index = 0;
            if(m_container[index].m_used && m_container[index].m_key == k)
                return true;
            index++;
            if(!m_container[index].m_used || index == org_idx)
                return false;
        }
    }

    int size(){ return m_size; }
    int capcity(){ return m_capacity; }

    void display()
    {
        for(int i = 0; i < m_capacity; i++)
        {
            if(m_container[i].m_used)
            {
                std::cout << m_container[i].m_key << ": " << m_container[i].m_data << "\n";
            }
        }
    }
};


template<typename KeyType, typename DataType, int Capacity, typename HashType>
class DynamicMap
{
    
};


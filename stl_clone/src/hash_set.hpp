#pragma once

#include<unordered_set>

template <typename T>
struct HashSetNode 
{
private:
    T m_data;
    HashSetNode* m_next;
public:

    HashSetNode(const T& data) : m_data(data), m_next(nullptr) {}
    HashSetNode() :m_next(nullptr) {}

    void set_next(HashSetNode* next) { m_next = next;}

    HashSetNode* get_next() const { return m_next; }
    const T& get_data() const { return m_data; }

};

template<typename T, typename HashFunc>
class HashSet
{    
private:
    size_t m_size = 100; 
    HashSetNode<T>** m_container;
    HashFunc hash_func;


    size_t get_hash(const T& data){ return hash_func(data) % m_size; }

public: 

    HashSet()
    {
        m_container = new HashSetNode<T>*[m_size]();
    }

    HashSet(const HashSet& other)
    {
        memccpy(this, &other, sizeof(HashSet));     
    }

    HashSet(HashSet&& other)
    {
        m_container = other.m_container;
        other.m_container = nullptr;
    }

    HashSet& operator=(HashSet&& other)
    {
        if(this != &other)
        {
            this->~HashSet();
            m_container = other.m_container;
            other.m_container = nullptr;
        }
        return *this;
    }


    ~HashSet()
    {
        for(int i = 0; i < 100; i++)
            delete m_container[i];
        delete[] m_container;
    }


    void insert(const T& data)
    {
        size_t hash = get_hash(data);

        if (m_container[hash] == nullptr )
            m_container[hash] = new HashSetNode<T>(data);
        
        else
        {
            HashSetNode<T>* cur_node = m_container[hash];
            while(cur_node->get_next() != nullptr)
            {
                cur_node = cur_node->get_next();
            }
            cur_node->set_next(new HashSetNode<T>(data));
        }
    } 

    
    template<typename... Args>
    void emplace(Args&&... args)
    {
        HashSetNode<T>* new_node = new HashSetNode<T>(std::move(T(args...)));
        size_t hash = get_hash(new_node->get_data());

        if (m_container[hash] == nullptr )
            m_container[hash] = new_node;
        
        else
        {
            HashSetNode<T>* cur_node = m_container[hash];
            while(cur_node->get_next() != nullptr)
            {
                cur_node = cur_node->get_next();
            }
            cur_node->set_next(new_node);
        }
    } 

    bool contains(const T& data)
    {
        size_t hash = get_data(data);

        if(m_container[hash] == nullptr)
            return false;
        else
        {
            HashSetNode<T>* cur_node = m_container[hash];
            while(cur_node != nullptr)
            {
                if(cur_node->get_data() == data)
                    return true;
                cur_node = cur_node->get_next();
            }
        }
    }

    void remove(const T& data)
    {
        size_t hash = get_data(data);

        if(m_container[hash] != nullptr)
        {
            HashSetNode<T>* cur_node = m_container[hash];
            if(cur_node->get_data() == data)
            {
                m_container[hash] = cur_node->get_next();
                delete cur_node;
                cur_node = m_container[hash];
            }

            HashSetNode<T>* prev_node = cur_node;
            while(cur_node != nullptr)
            {
                prev_node = cur_node;
                cur_node = cur_node->get_next();
                if(cur_node->get_data() == data())
                {
                    prev_node->set_next(cur_node->get_next());
                    delete cur_node;
                }                
            }   
        }
    }
};









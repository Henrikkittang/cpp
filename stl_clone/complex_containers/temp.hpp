#pragma once

template<typename T, size_t S>
struct LinkedArrayNode
{
    LinkedArrayNode* next = nullptr;
    LinkedArrayNode* prev = nullptr;
    T data[S];
    size_t size = 0;
};

template<typename T, size_t S>
class LinkedArray
{
private:
    typedef LinkedArrayNode<T, S> Node;

    Node* m_head = nullptr;
    Node* m_tail = nullptr;
    size_t m_size = 0;
    size_t m_capacity = 0;


    T& find(int idx)
    {
        if( idx < m_size/2 ){
            Node* cur_node = m_head;
            int cur_idx = 0;
            while(cur_node != nullptr){
                cur_idx += S;
                if(cur_idx > idx) break;
                cur_node = cur_node->next;
            }
            return cur_node->data[idx];
        }else{
            Node* cur_node = m_tail;
            int cur_idx = m_size;
            while(cur_node != nullptr){
                cur_idx -= S;
                if(cur_idx < idx) break;     
                cur_node = cur_node->prev;
            }
            return cur_node->data[idx];
        }
    }


public:

    void push_back(const T& data)
    {
        if(m_head == nullptr){
            m_head = new Node;
            m_tail = m_head;
        }else if( m_tail->size >= S ){
            Node* new_node = new Node;
            Node* prev_node = m_tail;
            m_tail->next = new_node;    
            m_tail = new_node;
            m_tail->prev = prev_node;
        }
        m_tail->size++;
        m_tail->data[m_size++] = data;
    }

    void pop_back()
    {
        if(m_head != nullptr){
            if( m_tail->size > 0 ){
                m_tail->size--;
            }else{
                m_tail = m_tail->prev;
                delete m_tail->next;
                m_tail->next = nullptr;
            }
        }
    }

    T& operator[](int idx){ return find(idx); }
    const T& operator[](int idx) const{ return find(idx); }


    constexpr size_t array_size() const { return S; }
    size_t size() const { return m_size; }
    size_t capacity() const { return m_capacity; }

};







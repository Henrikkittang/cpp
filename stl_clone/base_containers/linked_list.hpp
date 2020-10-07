
#include "allocator.hpp"

template<typename T>
struct DoublyNode
{
private:
    DoublyNode<T>* next = nullptr;
    DoublyNode<T>* prev = nullptr;

public:
    T data;

    template<class U> friend class DoublyLinkedList;
    template<class U> friend class LinkedListIterator;

    DoublyNode(const T& d)
        :data(d)
    {}

    DoublyNode(const DoublyNode& other)
        :data(other.data), next(other.next), prev(other.prev)
    {}

};

template<typename T>
class LinkedListIterator
{
private:
	DoublyNode<T>* m_node = nullptr;
public:

	LinkedListIterator(DoublyNode<T>* node)
		:m_node(node)
	{}

	void operator++(){ m_node = m_node->next; }
	void operator++(int){ m_node = m_node->next; }
	void operator--(){ m_node = m_node->prev; }
	void operator--(int){ m_node = m_node->prev; }
	DoublyNode<T>& operator*(){ return (*m_node);  }
	DoublyNode<T>* operator->() { return m_node; }
 	bool operator==(LinkedListIterator other){ return (m_node->next == other->next); }
	bool operator!=(LinkedListIterator other){ return (m_node->next != other->next); }
	bool has_next(){ return m_node->next != nullptr; }
	bool not_null() {return m_node != nullptr; }
};

template<typename T>
class DoublyLinkedList
{
private:
    size_t m_size = 0;
    DoublyNode<T>* m_head = nullptr;
    DoublyNode<T>* m_tail = nullptr;

    Allocator<DoublyNode<T>> m_allocator;
    size_t m_memory_used = 0;
    size_t m_memory_capacity = 0;
    DoublyNode<T>* m_memory;

    DoublyNode<T>* get_new_node(const T& data)
    {
        if(m_memory_used >= m_memory_capacity)
        {
            m_memory = m_allocator.allocate(m_size*2);
            m_memory_capacity = m_size*2;
            m_memory_used = 0;
        }
        m_allocator.construct(&m_memory[m_memory_used], data);
        return (&m_memory[m_memory_used++]);
    }

public:
    LinkedListIterator<T> begin() { return LinkedListIterator<T>(m_head); }
    LinkedListIterator<T> end() { return LinkedListIterator<T>(m_tail); }

    DoublyLinkedList()
    {
        m_memory = m_allocator.allocate(2);
        m_memory_capacity = 2;
        m_memory_used = 0;
    }

    DoublyLinkedList(const DoublyLinkedList& other)
    {
        memccpy(this, &other, sizeof(DoublyLinkedList));     
    }

    DoublyLinkedList(DoublyLinkedList&& other)
    {
        m_size = other.m_size;
        m_head = other.m_head;
        m_tail = other.m_tail;
        m_allocator = other.m_allocator;
        m_memory_used = other.m_memory_used;
        m_memory_capacity = other.m_memory_capacity;
        m_memory = other.m_memory;

        other.m_head = nullptr;
        other.m_tail = nullptr;
        other.m_memory = nullptr;
    }

    DoublyLinkedList& operator=(DoublyLinkedList&& other)
    {
        if(this != &other)
        {
            this.~DoublyLinkedList();

            m_size = other.m_size;
            m_head = other.m_head;
            m_tail = other.m_tail;
            m_allocator = other.m_allocator;
            m_memory_used = other.m_memory_used;
            m_memory_capacity = other.m_memory_capacity;
            m_memory = other.m_memory;

            other.m_head = nullptr;
            other.m_tail = nullptr;
            other.m_memory = nullptr;
        }
        return *this;
    } 

    ~DoublyLinkedList()
    {
        auto cur_node = m_head;
        while(cur_node != nullptr)
        {
            auto temp = cur_node;
            cur_node = cur_node->next;
            m_allocator.destroy(temp);
            m_allocator.deallocate(temp);
        }
        m_allocator.deallocate(&m_memory[m_memory_used], m_memory_capacity-m_memory_used);
    }

    void push_back(const T& data)
    {
        DoublyNode<T>* new_node = get_new_node(data);
        if(m_head == nullptr){
            m_head = new_node;
            m_tail = new_node;
        }else{
            auto prev_node = m_tail;
            m_tail->next = new_node;
            m_tail = new_node;
            m_tail->prev = prev_node;
        }
        m_size++;
    }

    void pop_back()
    {
		if(m_head != nullptr)
		{
			DoublyNode<T>* temp = m_tail;
			m_tail = m_tail->prev;
			m_tail->next = nullptr;
			m_allocator.destroy(temp);
			m_allocator.deallocate(temp);
			m_size--;
		}
    }
};


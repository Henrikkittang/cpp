
#include "benchmark.hpp"

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
class LinkedListAllocator
{
private:
    size_t m_capacity = 0;
    size_t m_size = 0;
    DoublyNode<T>* m_memory = nullptr;

    void allocate(size_t new_capcity)
    {
        m_memory = (DoublyNode<T>*)::operator new( sizeof(DoublyNode<T>) * new_capcity );
        m_capacity = new_capcity;
        m_size = 0;
    }

public:

    DoublyNode<T>* push_back(const T& data, size_t list_size)
    {
        if(m_size >= m_capacity)
        {
            allocate(list_size*2);
        }
        m_memory[m_size] = DoublyNode<T>(data);
        return &(m_memory[m_size++]);
    }

};

template<typename T>
class DoublyLinkedList
{
private:
    size_t m_size = 0;
    DoublyNode<T>* m_head = nullptr;
    DoublyNode<T>* m_tail = nullptr;
    LinkedListAllocator<T> alloactor;


public:
    LinkedListIterator<T> begin() { return LinkedListIterator<T>(m_head); }
    LinkedListIterator<T> end() { return LinkedListIterator<T>(m_tail); }


    void push_back(const T& data)
    {
        DoublyNode<T>* new_node = alloactor.push_back(data, m_size);
        if(m_head == nullptr)
        {
            m_head = new_node;
            m_tail = m_head;
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
			::operator delete(temp,  sizeof(DoublyNode<T>));
			m_size--;
		}
    }

    size_t size() const{ return m_size; }
};



int main(){
    Benchmark timer("graph/opt.txt");
    std::cout << "starting... \n";

    DoublyLinkedList<int> list;

    timer.start();

    for(int i = 0; i < 1000000; i++)
    {
        list.push_back(10);
    }

    timer.stop();   
    std::cout << list.size() << "\n";
}








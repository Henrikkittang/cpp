#include<functional>
#include<algorithm>
#include "benchmark.hpp"

class RefCount
{
private:
    int m_refs;
public:
    RefCount()
    {
        m_refs = 1;
    }

    ~RefCount()
    {
    }

    void increment()
    {
        m_refs++;
    }
    void decrement()
    {
        m_refs--;
    }
    int get_count()
    {
        return m_refs;
    }
};

template<typename T>
class SharedPointer
{
private:
    T* pointer = nullptr;
    RefCount* ref_count;

public:

    T* get_pointer()
    {
        return pointer;
    }

    SharedPointer(T* item=nullptr)
        : pointer(item), ref_count(new RefCount)
    {
    }
    ~SharedPointer()
    {
        ref_count->decrement();
        if(ref_count->get_count() <= 0){
            delete pointer;
            delete ref_count;
        }
    }

    SharedPointer(const SharedPointer<T>& other)
        : pointer(other.pointer), ref_count(other.ref_count)
    {
        ref_count->increment();
    }

    T& operator* ()
    {
        return *pointer;
    }

    T* operator->()
    {
        return pointer;
    }

    SharedPointer<T>& operator=(SharedPointer<T>& other_ptr)
    {
        if(this != &other_ptr)
        {
            ref_count->decrement();
            if(ref_count && ref_count->get_count() == 0)
            {
                delete pointer;
                delete ref_count;
            }
            pointer = other_ptr.pointer;
            ref_count = other_ptr.ref_count;
            ref_count->increment();
        }
        return *this;        
    }

    SharedPointer<T>& operator=(std::nullptr_t a_nullptr)
    {
        if(pointer != a_nullptr)
        {
            ref_count->decrement();
            if(ref_count && ref_count->get_count() == 0)
            {
                delete pointer;
                delete ref_count;
            }
            pointer = a_nullptr;
            ref_count = new RefCount;
        }
        return *this;   
    }

    bool operator==(std::nullptr_t a_nullptr)
    {
        return pointer == a_nullptr;
    }

    bool operator!=(std::nullptr_t a_nullptr)
    {
        return pointer != a_nullptr;
    }

    
};






template<typename T>
class SignleyLinkedList{
private:    
    struct SingleyNode
    {
        T data;
        SharedPointer<SingleyNode> next = nullptr;
        SingleyNode(const T& d)
            :data(d)
        {}

        SingleyNode(const SingleyNode& node)
            :data(node.data), next(node.next)
        {}
    };
    
    size_t m_size = 0;
    SharedPointer<SingleyNode> m_head = nullptr;
    SharedPointer<SingleyNode> m_tail = nullptr;

    T find(size_t index, const std::function<T(SharedPointer<SingleyNode>)>& func){
        SharedPointer<SingleyNode> cur_node = m_head;
        for(size_t cur_idx = 0; cur_idx < index; cur_idx++){
            cur_node = cur_node->next;
        }
        return func(cur_node);
    }    

public:
    SignleyLinkedList()
    {
    }
    ~SignleyLinkedList()
    {
    }

    void push_back(const T& data)
    {
        SharedPointer<SingleyNode> new_node(new SingleyNode(data));
        if(m_head == nullptr){
            m_head = new_node;
            m_tail = new_node;
        }else{
            m_tail->next = new_node;
            m_tail = new_node;
        }
        m_size++;
    }

    void push_front(const T& data)
    {
        SharedPointer<SingleyNode> new_node(new SingleyNode(data));
        if(m_head == nullptr){
            m_head = new_node;
            m_tail = new_node;
        }else{
            new_node->next = m_head;
            m_head = new_node;
        }
        m_size++;
    }

    void pop_back()
    {
        if(m_size == 0) return;
        else if(m_size == 1){
            m_head = nullptr;
            m_tail = nullptr;
        }else{
            find(m_size-2, [this](SharedPointer<SingleyNode> cur_node){
                cur_node->next = nullptr;
                m_tail = cur_node;
                return cur_node->data;
            }); 
        }
        m_size--;
    }

    void pop_front()
    {
        if(m_size == 0) return;
        else if(m_size == 1){
            m_head = nullptr;
            m_tail = nullptr;
        }else{
            m_head = m_head->next;
        }
        m_size--;
    }

    size_t size()
    {
        return m_size;
    }
};


int main(){
    Benchmark timer("graph/un_opt.txt");
    std::cout << "starting... \n";

    SignleyLinkedList<int> list;
    timer.start();

    for(int i = 0; i < 10000000; i++)
    {
        list.push_back(10);
    }
    timer.stop();
    std::cout << list.size() << "\n";

    
}

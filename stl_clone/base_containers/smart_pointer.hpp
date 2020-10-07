#pragma once


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





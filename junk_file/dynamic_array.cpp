#include <iostream>

 
template<typename T>
class DynamicArray
{
private:
    int m_size = 0;
    int m_capacity = 0;
    // T* container = (T*)malloc(m_capacity * sizeof(T));
    T* container = new T[0];

public:

    DynamicArray(int default_size=0)
    {
        resize(default_size);
        m_size = default_size;
    }

    ~DynamicArray()
    {
        // free(container);
        delete[] container;
    }

    void resize(int new_size)
    {
        // T* temp_container = (T*)realloc((new_size)*sizeof(T));
        T* temp_container = new T[new_size];        
        for(int i = 0; i < m_size-1; i++)
        {
            temp_container[i] = container[i];
        }
        m_capacity = new_size;
        container = temp_container;
    }

    void push_back(T item)
    {
        m_size++;
        if(m_size > m_capacity) resize(m_size);      
        container[m_size-1] = item; 
    }

    T pop_back()
    {
        float temp = container[m_size-1];
        container[m_size-1] = 0;
        return temp;
    }

    void erase(int index)
    {
        for(int i = index; i < m_size-1; i++)
        {
            container[i] = container[i+1];
        }
        m_size--;
    }

    int size() 
    {
        return m_size;
    }   

    int capacity()
    {
        return m_capacity;
    }

    T operator[](int index)
    {
        if(index >= m_size) throw "Index out of range";
        return container[index];
    }

    T at(int index)
    {
        return container[index];
    }

    void print()
    {
        for(int i = 0; i < m_size; i++)
        {
            std::cout << container[i] << "\n";
        }
    }

};

int main()
{
    {
        DynamicArray<float> DA;
        DA.push_back(4.0f);
        DA.push_back(5.0f);
        DA.push_back(6.0f);
        DA.push_back(7.0f);

        DA.erase(3);

        DA.print();
    }
}







#pragma once
#include<iostream>
#include<cstring>

class String
{
private:
    char* m_container = nullptr;
    size_t m_size = 0;
    size_t m_capacity = 0;

public:

    friend std::ostream &operator<<(std::ostream& ostream, String const& string);

    String() = default;

    String(const char* string)
    {
        m_container = new char[m_size];
        strcpy(m_container, string);
        m_size = strlen(string);
    }

    String(const String& other)
    {
        m_container = new char[other.m_capacity];
        strcpy(m_container, other.m_container);
        m_capacity = other.m_capacity;
        m_size = other.m_size;
    }

    String(String&& other)
    {
        m_container = other.m_container;
        other.m_container = nullptr;
        
        m_capacity = other.m_capacity;
        m_size = other.m_size;
    }

    String& operator=(String&& other)
    {
        if(this != &other)
        {
            delete[] m_container;

            m_container = other.m_container;
            other.m_container = nullptr;
            
            m_capacity = other.m_capacity;
            m_size = other.m_size;
        }
        return *this;
    }

    ~String()
    {
        delete[] m_container;
    }

    void operator=(const char* string)
    {
        delete[] m_container;
        m_size = strlen(string);
        m_container = new char[m_size*2];
        m_capacity = m_size*2;
        strcpy(m_container, string);
    }

    void operator+=(const String& other)
    {
        if(other.m_size > m_capacity-m_size)
        {
            char* new_container = new char[m_size+other.m_size];            
            strcpy(new_container, m_container);
            strcpy(&new_container[m_size], other.m_container);
            delete[] m_container;
            m_container = new_container;
            m_size += other.m_size;
            m_capacity = m_size;
        }else{
            strcpy(&m_container[m_size], other.m_container);
            m_size += other.m_size;
        }
    }

    void operator+=(const char* string)
    {
        size_t other_size = strlen(string);
        if(other_size > m_capacity-m_size)
        {
            char* new_container = new char[m_size+other_size];            
            strcpy(new_container, m_container);
            strcpy(&new_container[m_size], string);
            delete[] m_container;
            m_container = new_container;
            m_size += other_size;
            m_capacity = m_size;
        }else{
            strcpy(&m_container[m_size], string);
            m_size += other_size;
        }
    }

    char& operator[](size_t idx) { return m_container[idx]; }
    const char& operator[](size_t idx) const { return m_container[idx]; }
    
    char& at(size_t idx) { (idx >= m_size) ? m_container[idx] : throw "Index out of range"; }
    const char& at(size_t idx) const{ (idx >= m_size) ? m_container[idx] : throw "Index out of range"; }
    
    char* begin() { return &m_container[0]; }
    const char* begin() const { return &m_container[0]; }

    char* end() { return &m_container[m_size]; }
    const char* end() const { return &m_container[m_size]; }

    size_t size() const { return m_size; }
    size_t capacity() const { return m_capacity; }

    void reserve(size_t new_capacity) 
    {
        if(new_capacity >= m_capacity)
        {
            char* new_container = new char[new_capacity]; 

            if(m_container != nullptr) strcpy(new_container, m_container);

            delete[] m_container;
            m_container = new_container;
            m_capacity = new_capacity;
        }
    }

    void assign(const String& str, size_t start_idx, size_t end_idx)
    {
        // Not working
        if(end_idx < 0) end_idx = str.size();

        size_t interval = end_idx-start_idx;
        if(interval >= m_capacity)
        {
            reserve(interval*2);
        }
        strncpy(m_container, &(str.m_container[start_idx]), interval);
        m_size = interval;
    }

    void assign(const String& str) { assign(str, 0, str.size());}


    void clear()
    {
        delete[] m_container;
        m_container = nullptr;
        size_t m_size = 0;
        size_t m_capacity = 0;
    }

    bool is_empty() const { return (m_size == 0); }

    void push_back(const char ch)
    {
        if(m_size >= m_capacity)
        {
            reserve(m_size*2);
        }
        m_container[m_size++] = ch;
    }

    void pop_back() { m_size-=1; }

    void erase(size_t start_idx, size_t end_idx)
    {
        size_t interval = end_idx-start_idx;
        strncpy(&m_container[start_idx], &m_container[end_idx], m_size-interval);
        m_size -= interval;
    }
};

inline std::ostream &operator<<(std::ostream& ostream, String const& string) 
{ 
    for(const auto& ch : string)
    {
        ostream << ch;
    }
    return ostream;
}

String operator+(const String& str1, const String& str2)
{
    String new_string = str1;
    new_string += str2;
    return std::move(new_string);
}




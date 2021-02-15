#pragma once

template<typename T, size_t S>
class StaticArray
{
private:
    T m_container[S];

public:
    constexpr size_t size() const{ return S; }
    

    T& operator[](size_t idx){ return m_container[idx]; }
    const T& operator[](size_t idx) const{ return m_container[idx]; }

    T& at(size_t idx) { (idx >= S) ? throw "Index of out range!" : return m_container[idx]; }
    const T& at(size_t idx) const { (idx >= S) ? throw "Index of out range!" : return m_container[idx]; }

    T* begin() { return &m_container[0]; }
    const T* begin() const { return &m_container[0]; }
    T* end() { return &m_container[S-1]; }
    const T* end() const { return &m_container[S-1]; }

    bool operator== const(const StaticArray& other)
    {
        return ( (S == other.size()) && ( begin() == other.begin() ) );
    }

    void fill(const T& value)
    {
        memset(&m_container[0], value, S);
    }
};


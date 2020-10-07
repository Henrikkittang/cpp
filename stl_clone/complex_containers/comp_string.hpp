#include<iostream>

#include "../base_containers/static_array.hpp"
#include "../base_containers/dynamic_array.hpp"
#include "../base_containers/string.hpp"

class CompString
{
private:
    DynamicArray<char> m_container;

public:
    CompString() = default;

    CompString(const char* string)
    {
        size_t str_len = strlen(string);
        m_container.reserve(str_len);
        for(size_t i = 0; i < str_len; i++) 
        {
            m_container.push_back(string[i]);
        }
    }

    CompString(const CompString& string)
    {
        for(size_t i = 0; i < string.size(); i++) 
        {
            m_container.push_back(string[i]);
        }
    }

    char& operator[](size_t idx) { return m_container[idx]; }
    const char& operator[](size_t idx) const { return m_container[idx]; }

    char* begin() { return m_container.begin(); }
    const char* begin() const { return m_container.begin(); }

    char* end() { return m_container.end(); }
    const char* end() const { return m_container.end(); }
 
    size_t size() const { return m_container.size(); }
};

inline std::ostream &operator<<(std::ostream& ostream, const CompString& string) 
{ 
    for(const auto& ch : string)
    {
        ostream << ch;
    }
    return ostream;
}


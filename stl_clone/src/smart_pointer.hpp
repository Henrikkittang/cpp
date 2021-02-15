#pragma once


class RefCount
{
private:
    size_t m_refs;
public:
    RefCount()
        :m_refs(1) {}

    void increment() { m_refs++; }
    void decrement() { m_refs--; }
    size_t getCount() { return m_refs; }
};

template<typename T>
class SharedPointer
{
private:
    T* m_ptr = nullptr;
    RefCount* m_refs = nullptr;

public:

    SharedPointer()
        :m_refs(new RefCount) {}

    template<typename... Args>
    SharedPointer(Args&&... args)
        : m_ptr(new T(std::forward<Args>(args)...)), m_refs(new RefCount)
    {}

    SharedPointer(const SharedPointer<T>& other)
        : m_ptr(other.m_ptr), m_refs(other.m_refs)
    {
        m_refs->increment();
    }

    SharedPointer(SharedPointer<T>&& other)
        : m_ptr(other.pointer), m_refs(other.m_refs)
    {
        other.m_ptr = nullptr;
        other.m_refs = nullptr;
    }

    ~SharedPointer()
    {
        m_refs->decrement();
        if(m_refs->getCount() == 0){
            delete m_ptr;
            delete m_refs;
        }
    }

    T& operator* () { return *m_ptr; }
    const T& operator* () const { return *m_ptr; }

    T* operator->() {  return m_ptr; }
    const T* operator->() const {  return m_ptr; }

    T* get() { return m_ptr; }
    const T* get() const { return m_ptr; }

    bool operator==(const SharedPointer& other) const {return m_ptr == other.m_ptr; }
    bool operator!=(const SharedPointer& other) const {return m_ptr != other.m_ptr; }
    bool operator==(std::nullptr_t a_nullptr) const { return isNull(); }
    bool operator!=(std::nullptr_t a_nullptr) const { return !isNull(); }

    operator bool() const { return isNull(); }
    bool isNull() const { return m_ptr == nullptr; }    
    size_t useCount() const { return m_refs->getCount(); }

    void swap(SharedPointer& other)
    {
        T* temp_ptr = m_ptr;
        RefCount* temp_ref = m_refs;

        m_ptr = other.m_ptr;
        m_refs = other.m_refs;

        other.m_ptr = temp_ptr;
        other.m_refs = temp_ref;
    }

    void reset()
    {
        delete m_ptr;
        m_ptr = nullptr;
        m_refs->decrement();
        if(m_refs && m_refs->getCount() == 0)
        {
            delete m_refs;
        }
        m_refs = new RefCount;
    }

    T& release()
    {
        T temp;
        m_refs->decrement();
        if(m_refs && m_refs->getCount() == 1){
            temp = std::move( *m_ptr );
            delete m_ptr;
        }else{
            temp = std::copy( *m_ptr );
            m_refs = new RefCount;
        }
        return temp;
    }

    SharedPointer<T>& operator=(SharedPointer<T>& other_ptr)
    {
        if(this != &other_ptr)
        {
            m_refs->decrement();
            if(m_refs && m_refs->getCount() == 0)
            {
                delete m_ptr;
                delete m_refs;
            }
            m_ptr = other_ptr.m_ptr;
            m_refs = other_ptr.m_refs;
            m_refs->increment();
        }
        return *this;        
    }

    SharedPointer<T>& operator=(std::nullptr_t a_nullptr)
    {
        if(m_ptr != a_nullptr)
        {
            m_refs->decrement();
            if(m_refs && m_refs->getCount() == 0)
            {
                delete m_ptr;
                delete m_refs;
            }
            m_ptr = a_nullptr;
            m_refs = new RefCount;
        }
        return *this;   
    }

};

template<typename T>
class UniquePointer
{
private:
    T* m_ptr = nullptr;

public:

    UniquePointer() = default;

    template<typename... Args>
    UniquePointer(Args&&... args)
        :m_ptr(new T(std::forward<Args>(args)...)) {}

    UniquePointer(UniquePointer<T>&& other)
    {
        delete m_ptr;
        m_ptr = other.m_ptr;
        other.m_ptr = nullptr;
    }

    ~UniquePointer() 
    { 
        delete m_ptr; 
        m_ptr = nullptr;
    }

    UniquePointer<T>& operator=(UniquePointer&& other)
    {
        // if (this == &other) return *this;
        delete m_ptr;
        m_ptr = other.m_ptr;
        other.m_ptr = nullptr;
        return *this;
    }

    UniquePointer<T>& operator=(std::nullptr_t a_nullptr)
    {
        delete m_ptr;
        m_ptr = nullptr;
        return *this;
    }

    bool operator==(UniquePointer& other) const  { return m_ptr == other.m_ptr; }
    bool operator!=(UniquePointer& other) const  { return m_ptr != other.m_ptr; }
    bool operator==(std::nullptr_t a_nullptr) const  { return isNull(); }
    bool operator!=(std::nullptr_t a_nullptr) const  { return !isNull();  }

    operator bool() const { return isNull(); }
    bool isNull() const { return m_ptr == nullptr; }
    
    T& operator* () { return *m_ptr; }
    const T& operator* () const{ return *m_ptr; }
    T* operator->() { return m_ptr; }
    const T* operator->() const { return m_ptr; }
    T& get() { return m_ptr; }
    const T& get() const { return m_ptr; }

    T& release()
    {
        T value = std::move( *m_ptr );
        delete m_ptr;
        m_ptr = nullptr;
        return value;
    }

    void swap(UniquePointer<T>& other)
    {
        T* temp = other.m_ptr;
        other.m_ptr = m_ptr;
        m_ptr = temp;
    }

    void reset()
    {
        delete m_ptr;
        m_ptr = nullptr;
    }
};





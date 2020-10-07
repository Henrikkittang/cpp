#pragma once

template<typename T>
class Allocator
{
public:

    Allocator()
    {}

	T* allocate(size_t amount)
	{
		return ((T*)::operator new( amount * sizeof(T) ));
	}

	void deallocate(T* pointer, size_t amount=1)
	{
    	::operator delete(pointer, amount * sizeof(T));
	}

    template<typename... Args>
	void construct(T* pointer, Args&&... args)
	{
		new (pointer) T(std::forward<Args>(args)...);
	}

	void destroy(T* pointer, size_t amount=1)
	{
		for(size_t i = 0; i < amount; i++)
		{
			pointer[i].~T();
		}
	}
};






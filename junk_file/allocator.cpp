#include<iostream>


template<typename T>
struct Allocator
{
    unsigned char* allocate(int a_size)
    {
        return (unsigned char*)malloc(sizeof(T)*a_size);
    }

    void destroy(unsigned char* buf, int a_size)
    {
        for(int i = 0; i < a_size; i++)
        {
            T* pBuf = (T*)(buf+sizeof(T)*0);
            pBuf->~T();
        }
    }
    
    void deallocate(unsigned char* buf)
    {
        free(buf);
    }
};


struct Entity
{
    int data;
    Entity(int a_temp)
        :data(a_temp)
    {
        std::cout << "initilized \n";
    }

    ~Entity()
    {
        std::cout << "destroyed \n";
    }
};

int main()
{
    Allocator<Entity> allocator;

    auto buf = allocator.allocate(2);
    new (buf) Entity(3);
    
    Entity* pBuf = (Entity*)(buf+sizeof(Entity)*0);
    std::cout << pBuf << ": " << pBuf->data << "\n";

    allocator.destroy(buf, 1);
    allocator.deallocate(buf);

}
#include<iostream>
#include<functional>
#include<cmath>

template<typename T>
class DoublyNode{
 public:
    T data;
    DoublyNode* next = nullptr;
    DoublyNode* prev = nullptr;
    DoublyNode(T data)
        :data(data){}
};

template<typename T>
class DoublyLinkedList{
 private:
    typedef DoublyNode<T>* node_type;
    typedef DoublyNode<T> new_node_type;

    int m_size = 0;
    node_type head = nullptr;
    node_type tail = nullptr;

    T find(int index, const std::function<T(node_type)>& func){
        node_type cur_node = head;
        if(index < floor(m_size/2)){
            for(int cur_idx = 0; cur_idx < index; cur_idx++){
                cur_node = cur_node->next;
            }
        }else{
            for(int cur_idx = m_size-1; cur_idx > index; cur_idx--){
                cur_node = cur_node->prev;
            }
        }
        return func(cur_node);
    }    
 public:
    ~DoublyLinkedList(){
        node_type cur_node = head;
        while(cur_node != NULL){
            node_type temp = cur_node;
            cur_node = cur_node->next;
            delete temp;
        }
    }

    node_type push_back(T data){
        node_type new_node = new new_node_type(data);
        if(head == nullptr){
            head = new_node;
            tail = new_node;
        }else{
            tail->next = new_node;
            new_node->prev = tail;
            tail = new_node;
        }
        m_size++;
        return new_node;
    }
    void display(){
        node_type cur_node = head;
        while(cur_node != nullptr){
            std::cout << cur_node->data << std::endl;
            cur_node = cur_node->next;
        }
    }
    T get(int index){
        return find(index, [index](node_type cur_node){
            return cur_node->data;
        });
    }
    void set(int index, T data){
        find(index, [data](node_type cur_node){
            cur_node->data = data;
            return 0;
        });
    }
    void remove_front(){
        head = head->next;
        delete head->prev;
        head->prev = nullptr;
        m_size--;
    }
    void remove(int index){
        if(index == 0) remove_front();

        find(index-1, [this](node_type cur_node){
            node_type temp = cur_node->next;
            cur_node->next = temp->next;
            temp->prev = cur_node;
            delete temp;
            m_size--;
            return 0;
        });
    }
    T pop(){
        T tempData = tail->data;
        tail = tail->prev;
        delete tail->next;
        tail->next = nullptr;
        m_size--;
        return tempData;
    }
    void insert_front(T data){
        node_type new_node = new new_node_type(data);
        new_node->next = head;
        head->prev = new_node;
        head = new_node;
        m_size++;
    }
    void insert(int index, T data){
        if(index == 0) insert_front(data);
            
        node_type new_node = new new_node_type(data);
        find(index-1, [data, new_node](node_type cur_node){
            new_node->next = cur_node->next;
            cur_node->next = new_node;
            new_node->next->prev = new_node;
            return 0;
        });
        m_size++;
    }
   
    int size(){
        return m_size;
    }
};

struct Person
{
    int data;
    Person(int d)
    {
        data = d;
    }
};

int main(){

    DoublyLinkedList<Person> ll;
    ll.push_back(Person(3));
    ll.push_back(Person(4));
    ll.push_back(Person(5));
    ll.push_back(Person(7));
    ll.pop();
    // ll.display();

    std::cout << ll.size() << std::endl;
}




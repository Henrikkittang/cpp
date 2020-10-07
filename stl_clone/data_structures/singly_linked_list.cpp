#include<iostream>
#include<functional>


template<typename T>
class Node{
public:
    T data;
    Node* next = nullptr;
    Node(T data)
        :data(data){}
};

template<typename T>
class SinglyLinkedList{
private:
    typedef Node<T>* node_type;
    typedef Node<T> new_node_type;

    int length = 0;
    node_type head = nullptr;
    node_type tail = nullptr;

    T find(int index, const std::function<T(node_type)>& func){
        node_type cur_node = head;
        for(int cur_idx = 0; cur_idx < index; cur_idx++){
            cur_node = cur_node->next;
        }
        return func(cur_node);
    }    
public:
    ~SinglyLinkedList(){
        node_type cur_node = head;
        while(cur_node != NULL){
            node_type temp = cur_node;
            cur_node = cur_node->next;
            delete temp;
        }
    }

    node_type add(T data){
        node_type new_node = new new_node_type(data);
        if(head == nullptr){
            head = new_node;
            tail = new_node;
        }else{
            tail->next = new_node;
            tail = new_node;
        }
        length++;
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
        node_type temp = head;
        head = head->next;
        delete temp;
        length--;
    }
    void remove(int index){
        if(index == 0) remove_front();

        find(index-1, [this](node_type cur_node){
            node_type temp = cur_node->next;
            cur_node->next = temp->next;
            delete temp;
            length--;
            return 0;
        });
    }
    T pop(){
        return find(length-2, [this](node_type cur_node){
            node_type temp = cur_node->next;
            cur_node->next = nullptr;
            T data = temp->data;
            delete temp;
            length--;
            return data;
        });
    }
    void insert_front(T data){
            node_type new_node = new new_node_type(data);
            new_node->next = head;
            head = new_node;
            length++;
    }
    void insert(int index, T data){
        if(index == 0) insert_front(data);
            
        node_type new_node = new new_node_type(data);
        find(index-1, [data, new_node](node_type cur_node){
            new_node->next = cur_node->next;
            cur_node->next = new_node;
            return 0;
        });
        length++;
    }
    int size(){
        return length;
    }
};

struct Entity
{
    float data;
    Entity(float d)
    {
        data = d;
    }
};

int main(){

    SinglyLinkedList<Entity> ll;

    
    ll.add(Entity(4));
    ll.add(Entity(5));
    ll.add(Entity(6));
    ll.insert_front(Entity(7));
    ll.pop();   
    // ll.display();
    std::cout << ll.size() << "\n";

    //std::cout << ll.size() << std::endl;
}




#include<iostream>
#include<vector>
#include<string>

struct Node{
    std::string key;
    int data;
    Node* next = nullptr;

    Node(const std::string& key, const int& data) :key(key), data(data)  {}
};

class LinkedList{
    private:
    Node* head = nullptr;
    Node* tail = nullptr;

    public:

    ~LinkedList(){
        Node* cur_node = head;
        while(cur_node != nullptr){
            Node* temp = cur_node;
            cur_node = cur_node->next;
            delete temp;
        }
    }

    void add(const std::string& key, const int& data){
        Node *newNode = new Node(key, data);
        if(head == nullptr){
            head = newNode;
            tail = newNode;
        }else{
            tail->next = newNode;
            tail = newNode;
        }
    }
    void remove(const std::string& key){
        if(head->key == key){
            Node* oldHead = head;
            head = head->next;
            delete oldHead;
            return;
        }
        Node* prevNode = head;
        Node* curNode = head->next;
        while(curNode != nullptr){
            if(curNode->key == key){
                prevNode->next = curNode->next;
                delete curNode;
                return;
            }
            curNode = curNode->next;
        }
        std::cout << "'" + key + "'" + " Not found"<< "\n";
    }
    void display(){
        Node* curNode = head;
        while(curNode != nullptr){
            std::cout << curNode->key << ": " << curNode->data << "\n";
            curNode = curNode->next;
        }
    }   
};

class HashTable{
 private:
    std::vector<LinkedList> array;
    
    int hash(const std::string& key){
        int total = 0;
        for(int i = 0; i < key.size(); i++){
            total += int(key[i]);
        }
        return total % array.size();
    }

 public:
    HashTable(const int& size){
        array = std::vector<LinkedList>(size);
    } 
    void add(const std::string& key, const int& data){
        int index = hash(key);
        array[index].add(key, data);
    }
    void remove(const std::string& key){
        int index = hash(key);
        array[index].remove(key);
    }
    void display(){
        for(int i = 0; i < array.size(); i++){
            array[i].display();
        }
    }
};

int main(){
    HashTable ht(5);
    ht.add("noen", 3);
    ht.add("hmm", 13);
    ht.add("ye", 67);
    ht.add("yollo", 301);

    ht.remove("hmm");

    ht.display();
}





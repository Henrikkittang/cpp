#include<iostream>
#include<memory>
#include<cmath>
#include <future>

struct Node{
    int data;
    std::shared_ptr<Node> next = nullptr;
    std::weak_ptr<Node> prev;
    Node(int d){
        data = d;
    }
};

class CDLL{
private:
    std::shared_ptr<Node> head;
    std::shared_ptr<Node> tail;
    int length = 0;

    std::future<int> future_front;
    std::future<int> future_back;

public:
    void append(int data){
        std::shared_ptr<Node> newNode = std::make_shared<Node>(data);
        if(length == 0){
            head = newNode;
            tail = newNode;
        }else{
            tail->next = newNode;
            newNode->prev = tail;
            tail = tail->next;
        }
        length++;
    }
    void display(){
        std::shared_ptr<Node> curNode = head;
        while(curNode != nullptr){
            std::cout << curNode->data << ", ";
            curNode = curNode->next;
        }
    }

    int find_front(int data){
        std::shared_ptr<Node> curNode = head;
        int curIdx = 0;
        while(curIdx < floor(length/2)){
            if(curNode->data == data) return curIdx;
            curNode = curNode->next;
            curIdx++;
        }
        return -1;
    }

    int find_back(int data){
        std::weak_ptr<Node> curNode = tail;
        int curIdx = length-1;
        while(curIdx >= floor(length/2)){
            if((curNode.lock())->data == data) return curIdx;
            curNode = (curNode.lock())->prev;
            curIdx--;
        }
        return -1;
    }

    int find(int data){
        future_front = std::async(std::launch::async, &find_front, this, data);
        future_back = std::async(std::launch::async, &find_back, this, data);


        int front = future_front.get();
        if(front > 0) return front;
        else return future_back.get();
    }

    int size(){
        return length;
    }
    void clear(){
        std::shared_ptr<Node> head = nullptr;
        std::shared_ptr<Node> tail = nullptr;
        int length = 0;
    }
};

int main(){

}





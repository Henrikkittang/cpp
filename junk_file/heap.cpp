#include<iostream>
#include<queue>
#include<vector>

class Node{
public:
    int x;
    Node(int l){
        x = l;
    }
};

class nodeCompare{
public:
   bool operator()( const Node* a, const Node* b ) const{
       return a->x > b->x;
   }
};

int main(){
    
    std::priority_queue<Node*, std::vector<Node*>, nodeCompare> pq;

    for(int i = 0; i < 10; i++){
        pq.push(new Node(i));
    }

    for(int i = 0; i < 10; i++){
        std::cout << pq.top()->x << ", ";
        pq.pop();
    }
}
#include<iostream>
#include<set>
#include<iterator>

struct Node{
    int f;
    Node(int x){
        f = x;
    }
};

struct compare {
    bool operator()(const Node* a, const Node* b) const {
        return a->f < b->f;
    }
};

int main(){
    
    std::multiset<Node*, compare> que;

    que.insert(new Node(10));
    que.insert(new Node(2));
    que.insert(new Node(100));
    que.insert(new Node(23));
    que.insert(new Node(56));

    for(Node* elem : que){
        std::cout << elem->f << ", ";
    }

    std::cout << std::endl;

    Node* cur = *(que.begin());
    std::cout << "First Node: " << cur->f << std::endl;

    for (std::multiset<Node*>::const_iterator i(que.begin()), end(que.end()); i != end; ++i){
        std::cout << (*i)->f << ", ";
    }
}




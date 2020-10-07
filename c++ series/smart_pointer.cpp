#include<iostream>
#include<memory>

using namespace std;


class Entity{
public:
    Entity(){
        cout << "Created Entity" << endl;
    }
    ~Entity(){
        cout << "Destroyd Entity" << endl;
    }
    void print(){

    }
};

int main(){

    {
        unique_ptr<Entity> entity = make_unique<Entity>();
        entity->print();

        shared_ptr<Entity> sharedEntity = make_shared<Entity>();
        shared_ptr<Entity> e0 = sharedEntity;
        weak_ptr<Entity> weakEntity = sharedEntity;

    }

}




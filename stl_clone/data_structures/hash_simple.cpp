#include<iostream>
#include<vector>
#include<string>
#include<functional>

struct Container{
    std::string key = "";
    int data;
};

class HashTable{
private:
    std::vector<Container> array;

    int hash(const std::string& key){
        int total = 0;
        for(const char& tempChar : key){
            total += int(tempChar);
        }

        return total % array.size(); 
    }

    int find(const std::string& key, const std::function<int(int)>& func){
        int index = hash(key);
        while(true){
            if(index >= array.size()){
                index = 0;
            }
            if(array[index].key == key){
                return func(index);
            } 
            index++;
        }
    }

public:
    HashTable(const int& size){
        array = std::vector<Container>(size);
    }

    void add(const std::string& key, const int& data){
        int index = hash(key);
        while(true){
            if(index >= array.size()) index = 0;
            if(array[index].key == ""){
                array[index].key = key;
                array[index].data = data;
                return;
            }index++;
        }
    }
    void remove(const std::string& key){
        find(key, [this](int index){
            array[index].key = "";
            array[index].data = 0;            
            return 0;
        });
    }
    int get(const std::string& key){ 
        return find(key, [this](int index){
            return array[index].data;
        });
    }
    void set(const std::string& key, int& newData){
        find(key, [this, &newData](int index){
            array[index].data = newData;
            return 0;
        });
    }
    void display(){
        std::cout << "" << "\n";
        for(int i = 0; i < array.size(); i++){
            if(array[i].key != ""){
                std::cout << "--" << array[i].key << ": " << array[i].data << "\n";
            }else{
                std::cout <<  "--" << "Empty" << "\n";
            }
        }
        std::cout << "" << "\n";
    }
};


int main(){
    
    HashTable ht(5000);    

}






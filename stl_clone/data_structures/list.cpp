#include<iostream>

template<typename T>
class List{
private:
    typedef T* arrType;
    typedef T elemType;

    arrType arr = new elemType[0];
    int size = 0;

public:
    void append(elemType data){
        size++;
        arrType newArr = new elemType[size];
        for(int i = 0; i < size; i++){
            newArr[i] = arr[i];
        }
        newArr[size-1] = data;
        arr = newArr;
    }
    void remove(int index){
        arrType newArr = new elemType[size-1];
        int extra = 0;
        for(int i = 0; i < size; i++){
            if(i != index) newArr[i-extra] = arr[i];
            else extra++;
        }
        size--;
        arr = newArr;
    }
    elemType pop(){
        size--;
        return arr[size];
    }
    void display(){
        for(int i = 0; i < size; i++){
            std::cout << arr[i] << std::endl;
        }
    }
    elemType get(int index){
        if(index > size-1){
            throw std::out_of_range ("Index is out of range");
        }else{
            return arr[index];
        }
    }
    void set(int index, elemType data){
        if(index > size-1){
            throw std::out_of_range ("Index is out of range");
        }else{
            arr[index] = data;
        }
    }
    int getSize(){
        return size;
    }
};




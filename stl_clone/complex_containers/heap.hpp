#pragma once

#include<cmath>
#include <iostream>
#include "..\base_containers\dynamic_array.hpp"


template<typename DataType, typename CompareType>
class Heap{
private:
    DynamicArray<DataType> m_container;
    CompareType m_comparator;

    void swap(int i, int j){
        DataType temp = m_container[i];
        m_container[i] = m_container[j];
        m_container[j] = temp;
    }

    void bubbleUp(int index){
        int parent = floor((index - 1) / 2);
        if(index == 0){
            return;
        }else if(m_comparator(m_container[index], m_container[parent])){
            swap(index, parent);
            bubbleUp(parent);
        }
    }

public:

    void insert(const DataType data){
        m_container.push_back(data);
        bubbleUp(m_container.size() - 1);
    }
};





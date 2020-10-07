#include<iostream>
#include<vector>
#include<cmath>

// index
// i left = 2i + 1
// i right = 2i + 2
// i parent = |(i - 1) / 2| ... floor

class MaxHeap{
private:
    std::vector<int> heap;

    void swap(int i, int j){
        int temp = heap[i];
        heap[i] = heap[j];
        heap[j] = temp;
    }

    void bubbleUp(int index){
        int parent = floor((index - 1) / 2);
        if(index == 0){
            return;
        }else if(heap[index] > heap[parent]){
            swap(index, parent);
            bubbleUp(parent);
        }
    }
    void maxHeapify(int index){
        int left = 2*index + 1;
        int right = 2*index + 2;

        int largest;
        if(left <= heap.size() - 1 && heap[left] > heap[index]){
            largest = left;
        }else largest = index;  

        if(right <= heap.size() - 1 && heap[right] > heap[largest]){
            largest = right;
        }
        if(largest != index){
            //std::cout << largest  << ":" << heap[largest] << std::endl;
            swap(largest, index);
            maxHeapify(largest);
        }
    }

public:
    int getMax(){
        return heap[0];
    }
    void insert(int data){
        heap.push_back(data);
        bubbleUp(heap.size() - 1);
    }
    void display(){
        for(int i = 0; i < heap.size(); i++){
            std::cout << heap[i] << ", ";
        }
        std::cout << std::endl;
    }
    int popRoot(){
        swap(0, heap.size()-1);
        int root = heap[heap.size()-1];
        heap.pop_back();
        maxHeapify(0);
        return root;
    }
    int getHeight(){
        return ceil( log2( heap.size()-1 ) ) + 1;
    }
    void sort(){
        std::vector<int> sorted;
        sorted.reserve(heap.size());

        while(heap.size() > 0){
            int max = popRoot();
            sorted.push_back( max );
        }
        heap = sorted;
    }
};

int main(){
    MaxHeap mh;
    mh.insert(34);
    mh.insert(1);
    mh.insert(23);
    mh.insert(245);
    mh.insert(23);
    mh.insert(12);

    mh.sort();

    mh.display();



}




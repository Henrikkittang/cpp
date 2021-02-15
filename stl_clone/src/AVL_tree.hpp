#pragma once


template<typename KeyType, typename DataType>
struct AVLNode
{
    KeyType key;
    DataType data;
    AVLNode<KeyType, DataType>* left  = nullptr;
    AVLNode<KeyType, DataType>* right = nullptr;
    AVLNode<KeyType, DataType>* prev  = nullptr;

    AVLNode(KeyType k, DataType d)
        :key(k), data(d) 
    {}
};

template<typename KeyType, typename DataType>
class AVLTree
{
private:
    typedef AVLNode<KeyType, DataType> NodeType;
    NodeType* m_root = nullptr;
    size_t m_size = 0;

    void insert(NodeType* cur_node, NodeType* parent_node)
    {
        if(compare(cur_node, parent_node)){
            if(parent_node->right == nullptr){
                parent_node->right = cur_node;
                cur_node->prev = parent_node;
            }else{
                insert(cur_node, parent_node->right);
            }
        }else{
            if(parent_node->left == nullptr){
                parent_node->left = cur_node;
                cur_node->prev = parent_node;
            }else{
                insert(cur_node, parent_node->left);
            }
        }
    }   

    DataType& find(KeyType key, NodeType cur_node){
        if(key == cur_node->key){
            return cur_node->data;
        }
        
       
    }

public:

    void insert(KeyType key, DataType data)
    {
        NodeType* new_node = new NodeType(key, data);
        if(m_root == nullptr){
            m_root = new_node;
        }else{
            insert(new_node, m_root);
        }
        m_size++;
    }

    DataType& find(KeyType key){

    }

    void _print(NodeType* cur_node)
    {
        if(cur_node != nullptr){
            _print(cur_node->left);
            std::cout << cur_node->key << ": " << cur_node->data << "\n";
            _print(cur_node->right);
        }
    }

    void print()
    {
        _print(m_root);
    }

    virtual bool compare(const NodeType* n1, const NodeType* n2) const
    {
        return n1->key > n2->key;
    }

};





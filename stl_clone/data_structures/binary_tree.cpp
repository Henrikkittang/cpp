#include<iostream>
#include<string>
#include<memory>

struct TreeNode{
    int key;
    std::string data;

    std::shared_ptr<TreeNode> left_child = nullptr;
    std::shared_ptr<TreeNode> right_child = nullptr;
    std::weak_ptr<TreeNode> parent;

    TreeNode(int k, std::string d)
    {
        key = k;
        data = d;
    }
};

class BinarySearchTree{
private:
    std::shared_ptr<TreeNode> root_node = nullptr;
    int nodes = 0;

    std::shared_ptr<TreeNode> find_traverse(int key, std::shared_ptr<TreeNode> cur_node)
    {
        if(key > cur_node->key){
            return find_traverse(key, cur_node->right_child);
        }else if(key < cur_node->key){
            return find_traverse(key, cur_node->left_child);
        }else{
            return cur_node;
        }   
    }

    void push_traverse(int key, std::string data, std::shared_ptr<TreeNode> cur_node)
    {
        if(key > cur_node->key){
            if(cur_node->right_child != nullptr){
                push_traverse(key, data, cur_node->right_child);
            }else{
                cur_node->right_child = std::make_shared<TreeNode>(key, data);
                cur_node->right_child->parent = cur_node;
            }
        }else if(key < cur_node->key){
            if(cur_node->left_child != nullptr){
                push_traverse(key, data, cur_node->left_child);
            }else{
                cur_node->left_child = std::make_shared<TreeNode>(key, data);
                cur_node->left_child->parent = cur_node;
            }
        }else{
            std::cout << "key already taken \n";
        }   
    }

    std::shared_ptr<TreeNode> pop_lowest(std::shared_ptr<TreeNode> cur_node)
    {
        if(cur_node->left_child == nullptr) return remove(cur_node->key);
        else return pop_lowest(cur_node->left_child);
    }

    void print_travrse(std::shared_ptr<TreeNode> cur_node)
    {
        if(cur_node != nullptr){
            print_travrse(cur_node->left_child);
            std::cout << cur_node->key << ": " << cur_node->data << "\n";
            print_travrse(cur_node->right_child);
        }
    }

    

public:
    void push(int key, std::string data)
    {
        if(root_node == nullptr){
            root_node = std::make_unique<TreeNode>(key, data);
        }else{
            push_traverse(key, data, root_node);
        }   
    }

    std::shared_ptr<TreeNode> remove(int key)
    {
        if(root_node != nullptr){
            auto temp_node = find_traverse(key, root_node);
            auto parent = temp_node->parent.lock();

            // zero children
            if(temp_node->right_child == nullptr && temp_node->left_child == nullptr)
            {   
                if(parent->right_child == temp_node){
                    parent->right_child = nullptr;
                }else{
                    parent->left_child = nullptr;
                }
            }

            // one child
            else if(temp_node->right_child == nullptr || temp_node->left_child == nullptr)
            {
                if(parent->right_child == temp_node){
                    if(temp_node->right_child == nullptr){
                        parent->right_child = temp_node->left_child;
                    }else{
                        parent->right_child = temp_node->right_child;
                    }
                }else{
                     if(temp_node->right_child == nullptr){
                        parent->left_child = temp_node->left_child;
                    }else{
                        parent->left_child = temp_node->right_child;
                    }
                }
            }

            // two children
            else{
                auto lowest = pop_lowest(temp_node->right_child);
                temp_node->key = lowest->key;
                temp_node->data = lowest->data;
            }

            return temp_node;
        }else{
            return std::make_shared<TreeNode>(0, "");
        }
    }

    void print(){
        print_travrse(root_node);
    }
};

int main(){
    BinarySearchTree bst;
    bst.push(5, "yes");
    bst.push(34, "hmm");
    bst.push(212, "okay");
    bst.push(3, "lets see");
    bst.push(300, "lets go");
    bst.push(20, "books");


    // bst.remove(34);
    // bst.remove(212);
    bst.remove(5);
    bst.remove(212);
    bst.remove(300);

    bst.print();
}





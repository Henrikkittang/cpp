

template<typename T>
struct Node
{
    T* data;
    Node* next;
    Node* prev;

    Node(const T& d)
        :data(d)
    {}
};

template<typename T>
class Queue
{
private:
    Node* m_head = nullptr;
    Node* m_tail = nullptr;
    size_t m_size = 0;

public:

    ~Queue()
    {
        Node* cur_node = head;
        while(cur_node != nullptr)
        {
            Node* temp = cur_node;
            delete temp;
            cur_node = cur_node->next;
        }
    }

    T& push(const T& data)
    {
        Node* new_node = new Node(data);
        if(m_head == nullptr){
            m_head = new_node;
            m_tail = new_node;
        }else{
            new_node->next = m_head;
            m_head->prev = new_node;
            m_head = new_node;
        }
        m_size++;
        return (new_node->data);
    }

    T pop()
    {
        T data = m_tail->data;;
        if(m_size == 1){
            delete m_tail;
            m_tail = nullptr;
            m_head = nullptr;
        }else{
            m_tail = m_tail->prev;
            delete (m_tail->next);
            m_tail->next = nullptr;
        }
        m_size--;
        return data;
    }

    void is_empty() const { return (m_size == 0); }
    void size() const { return m_size; }

    T& top() { return m_tail->data; }
    const T& top() const { return m_tail->data; }
};

template<typename T>
class Stack
{
private:
    Queue<T> m_contaienr;

public:

    T& push(const T& data) { return m_contaienr.push(data); }
    
    void pop()
    {
        Stack<T> new_stack;
        for(int i = 0; i < m_contaienr.size()-1; i++)
        {
            new_stack.push( m_contaienr.pop(); );
        }
        m_contaienr = new_stack;
    }
};  


int main()
{

}


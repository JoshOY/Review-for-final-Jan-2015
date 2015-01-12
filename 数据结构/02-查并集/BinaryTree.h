#ifndef __BINARY_TREE_H__
#define __BINARY_TREE_H__

template <class T>
struct Node
{
	Node(): left(nullptr), right(nullptr), parent(nullptr)
	{}
	Node(const T& value_init): left(nullptr), right(nullptr), parent(nullptr)
	{
		this->value = value_init;
	}
	~Node()
	{}
	
	T     value;
	Node *left;
	Node *right;
	Node *parent;
};

template <class T>
class BTree
{
public:
	BTree(): root(nullptr), nodeNum(0)
	{}

	BTree(const Node<T> *root_init): root(root_init), nodeNum(1)
	{}

	~BTree()
	{
		if (root == nullptr) {
			return;
		}
		                                                  
	}

private:
	Node<T> *root;
	int nodeNum;
};

#endif
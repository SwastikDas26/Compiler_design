#include <iostream>
#include <string>
#include <sstream>
using namespace std;

// Define the types of nodes in the syntax tree
enum class NodeType {
    Number,
    Add,
    Subtract,
    Multiply,
    Divide
};

// Define the syntax tree node structure
struct Node {
    NodeType type;
    int value; // For Number nodes
    Node* left;
    Node* right;
};

// Function to create a new Number node
Node* createNumberNode(int value) {
    Node* node = new Node;
    node->type = NodeType::Number;
    node->value = value;
    node->left = nullptr;
    node->right = nullptr;
    return node;
}

// Function to create a new operation node
Node* createOperationNode(NodeType type, Node* left, Node* right) {
    Node* node = new Node;
    node->type = type;
    node->left = left;
    node->right = right;
    return node;
}

// Function to evaluate the syntax tree recursively
int evaluate(Node* root) {
    if (root == nullptr) {
        return 0;
    }

    switch (root->type) {
        case NodeType::Number:
            return root->value;
        case NodeType::Add:
            return evaluate(root->left) + evaluate(root->right);
        case NodeType::Subtract:
            return evaluate(root->left) - evaluate(root->right);
        case NodeType::Multiply:
            return evaluate(root->left) * evaluate(root->right);
        case NodeType::Divide:
            return evaluate(root->left) / evaluate(root->right);
        default:
            std::cerr << "Error: Unknown node type\n";
            return 0;
    }
}

int main() {
    // Construct a sample syntax tree: 2 * (3 + 4)
    Node* root = createOperationNode(NodeType::Multiply,
                                     createNumberNode(2),
                                     createOperationNode(NodeType::Add,
                                                        createNumberNode(3),
                                                        createNumberNode(4)));

    // Evaluate the syntax tree and print the result
    int result = evaluate(root);
    cout << "Result: " << result << endl;

    // Free memory by deleting the syntax tree
    // You should implement a function to recursively delete the tree nodes
    // to avoid memory leaks in a real-world scenario

    return 0;
}

import UIKit

class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

/*
 
 This is what the tree looks like
 
          10
        /    \
       5      14
      /      /  \
     1      11   20
    /  \   /  \ /  \
 nil    nil   nil   nil
 
*/

// left branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

// right branch
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

// root
let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)

// search algorithm
func search(node: Node?, searchValue: Int) -> Bool {
    // Base case
    if node == nil {    // stops at nil
        return false
    }
    // keeps recursively searching tree until either value or nil is found
    if node?.value == searchValue {
        return true
    // node! forces node non optional
    } else if searchValue < node!.value {
        // recursion, search left and right side of tree
        return search(node: node?.leftChild, searchValue: searchValue)
    } else {
        return search(node: node?.rightChild, searchValue: searchValue)
    }
}

// starts search at node passed in, for searchValue passed in
print(search(node: tenRootNode, searchValue: 5))
print(search(node: fourteenNode, searchValue: 11))
print(search(node: fourteenNode, searchValue: 1))


// Function to print tree structure



// Function to add new nodes



// Function to delete a node



// Function to delete entire tree

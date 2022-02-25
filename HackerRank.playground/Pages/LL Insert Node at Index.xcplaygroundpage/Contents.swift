//: [Previous](@previous)

import Foundation

/*
 
 Given the pointer to the head node of a linked list and an integer to insert at a certain position, create a new node with the given integer as its  attribute, insert this node at the desired position and return the head node.
 A position of 0 indicates head, a position of 1 indicates one node away from the head and so on. The head pointer given may be null meaning that the initial list is empty.
 Example
  refers to the first node in the list
  

 Insert a node at position  with . The new list is
 Function Description Complete the function insertNodeAtPosition in the editor below. It must return a reference to the head node of your finished list.
 insertNodeAtPosition has the following parameters:
 head: a SinglyLinkedListNode pointer to the head of the list
 data: an integer value to insert as data in your new node
 position: an integer position to insert the new node, zero based indexing
 Returns
 SinglyLinkedListNode pointer: a reference to the head of the revised list
 Input Format
 The first line contains an integer , the number of elements in the linked list.
 Each of the next  lines contains an integer SinglyLinkedListNode[i].data.
 The next line contains an integer , the data of the node that is to be inserted.
 The last line contains an integer .
 Constraints

 , where  is the  element of the linked list.
 .
 Sample Input
 3
 16
 13
 7
 1
 2
 Sample Output
 16 13 1 7
 Explanation
 The initial linked list is . Insert  at the position  which currently has  in it. The updated linked list is .
 */

//36min




class SinglyLinkedListNode{
        var data: Int
        var next: SinglyLinkedListNode?
    
    init(data: Int, next: SinglyLinkedListNode? = nil){
        self.data = data
        self.next = next
    }
    

}


extension SinglyLinkedListNode : CustomStringConvertible {
    var description: String {
        if let next = next {
            return "\(data) -> \(next.description)"
        } else {
            return "\(data)"
        }
    }
}


func insertNodeAtPosition(llist: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
    let head = llist
    var currentNodeIndex = 1
    
    var currentNode = head
    if currentNode != nil {
    while currentNodeIndex < position {
        currentNodeIndex += 1
        currentNode = currentNode?.next
    }
    
    let nextNode = currentNode?.next
    let newNode = SinglyLinkedListNode(data: data)
    newNode.next = nextNode
    currentNode?.next = newNode
    }
    return head
}




let list = SinglyLinkedListNode(data: 3)
let node0 = SinglyLinkedListNode(data: 16)
let node1 = SinglyLinkedListNode(data: 13)
let node2 = SinglyLinkedListNode(data: 7)

list.next = node0
node0.next = node1
node1.next = node2


insertNodeAtPosition(llist: list, data: 1, position: 2)

print(list.description)


//input
/*
6
1
2
3
4
5
6
7
5
 
 //output: 1 2 3 4 5 7 6
 
 
 
*/

//: [Next](@next)

/*
* #121 - Implement A Singly Linked List
*
* Implement a Linked List
* A linked list is a fundamental data structure in computer science. 
* Linked data structures are used in heaps, graphs and trees.
* 
* In this problem you need to implement a basic singly linked list. 
* You are given a class and basic method signatures as well as a Node class. 
* You will need to implement the following...
* 
* A constructor to set the initial state of the class
*
* The method addToFront() 
* - it accepts an integer and puts it at the front of the list. This should be a constant time operation.
* 
* The method removeFromFront() 
* - this removes the element at the front of the list and returns its value. 
* - It should be a constant time operation. If the list is empty return null.
*
* The method size()
* - This should return the current size of the list.
*
* The method addToTail()
* - This adds an element to the end of the list. See if you can find a way to do it in constant time as a challenge
*
* The method removeFromTail()
* - Remove the last element in the list and return its value. If the list is empty return null
* 
* Example 1
* LinkedList linkedList = new LinkedList();
* linkedList.addToFront(1);
* linkedList.addToFront(2);
* linkedList.size(); // 2
* linkedList.removeFromFront() // 2
* linkedList.size()// 1
* 
* Example 2
* LinkedList LinkedList = new LinkedList();
* linkedList.addToTail(5);
* linkedList.addToTail(6);
* linkedList.addToFront(1);
* linkedList.addToFront(2);
* linkedList.size(); // 4
* linkedList.removeFromTail() // 6
* linkedList.removeFromTail() // 5
* linkedList.removeFromTail() // 1
* linkedList.removeFromFront() // 2
* linkedList.removeFromFront() // null
* linkedList.size() == 0;
*/


public class LinkedList{

    public Node head { get; private set; }
    public Node tail { get; private set; }
    public Integer size { get; private set; }

    public LinkedList() {
        this.head = null;
        this.tail = null;
        this.size = 0;
    }
    
    public void addToFront(Integer value) {
        Node newNode = new Node(value);
        if (this.head == null) {
            this.head = newNode;
            this.tail = this.head;
        } else {
            newNode.next = this.head;
            this.head = newNode;
        }
        this.size++;
    }

    public Integer removeFromFront() {
        if (this.size == 0) {
            return null;
        }

        Node remove = this.head;
        this.head = this.head.next;
        this.size--;
        return remove.data;
    }

    public void addToTail(Integer value) {
        Node newNode = new Node(value);
        if (this.head == null) {
            this.head = newNode;
            this.tail = this.head;
        } else {
            this.tail.next = newNode;
            this.tail = newNode;
        }
        this.size++;
    }

    public Integer removeFromTail() {
        if (this.size == 0) {
            return null;
        }

        if (this.size == 1) {
            Node temp = this.head;
            this.head = null;
            this.size--;
            return temp.data;
        }

        Node current = this.head;
        Node newTail = null;
        while (current.next != null) {
            newTail = current;
            current = current.next;
        }
        this.tail = newTail;
        tail.next = null;
        this.size--;
        return current.data;
    }

    public Integer size() {
        return this.size;
    }    
}

public class Node {
    public Integer data { get; private set; }
    public Node next;

    public Node(Integer data) {
        this.data = data;
    }
}


/*
* Test 1
LinkedList linkedList = new LinkedList();
linkedList.addToFront(1);
linkedList.addToFront(2);
System.assert(linkedList.size() == 2);
linkedList.addToFront(3);
System.assert(linkedList.size() == 3);
System.assert(linkedList.removeFromFront() == 3);
System.assert(linkedList.removeFromFront() == 2);
System.assert(linkedList.size() == 1);
System.assert(linkedList.removeFromFront() == 1);
System.assert(linkedList.removeFromFront() == null);

* Test 2
LinkedList LinkedList = new LinkedList();
LinkedList.addToTail(5);
LinkedList.addToTail(6);
System.assert(LinkedList.size() == 2);
System.assert(LinkedList.removeFromFront() == 5);
System.assert(LinkedList.size() == 1);
linkedlist.addToFront(10);
System.assert(LinkedList.size() == 2);
System.assert(LinkedList.removeFromFront() == 10);
System.assert(linkedlist.removeFromFront() == 6);

* Test 3
LinkedList linkedlist = new LinkedList();
System.assert(linkedlist.removeFromTail() == null);
linkedlist.addToFront(1);
linkedlist.addToFront(2);
System.assert(linkedlist.removeFromTail() == 1);
System.assert(linkedlist.size() == 1);
System.assert(linkedlist.removeFromTail() == 2);
System.assert(linkedlist.size() == 0);
linkedlist.addToFront(1);
linkedlist.addToFront(2);
linkedlist.addToFront(3);
linkedlist.addToTail(4);
linkedlist.addToTail(5);
System.assert(linkedlist.removeFromTail() == 5);
System.assert(linkedlist.removeFromTail() == 4);
System.assert(linkedlist.removeFromTail() == 1);
*/
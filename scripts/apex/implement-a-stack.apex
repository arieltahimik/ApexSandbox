/*
* #117 - Implement A Stack
* The stack is one of the simplest data structures and almost one of the most important in programming. 
* We use a stack to organize objects with the Last In - First Out (LIFO) principle. 
* A user may add to the stack at any time, but may only have access to the object that was last inserted into the stack.
* 
* In this challenge you will implement a stack data structure with the following methods.
* 
* Push : add an object to the top of the stack
* Pop: remove the object at the top of the stack
* Peek: return the object at the top of the stack but do not remove
* Size: return the number of objects in the stack
* Is Empty: return true is the stack is empty, false if not
*
* Example
* stack.push(1), stack.push(2), stack.push(3) stack.push(4), 
* stack.isEmpty() //false 
* stack.size()    // 4 
* stack.peek()    // 4 
* stack.pop()     // 4 
* stack.pop()     // 3 
* stack.size()    // 2 
* stack.peek()    // 2 
* stack.pop()     // 2 
* stack.pop()     // 1 
* stack.size()    // 0 
* stack.isEmpty() // true 
* stack.pop()     // null
*/

public class Stack {

    public List<Object> o = new List<Object>();

    public void push(Object obj) {
        o.add(obj);        
    }
    
    public Object pop() {
        if (!o.isEmpty()) {
            return o.remove(o.size()-1);
        } else {
            return null;
        }
    }
    
    public Integer size() {
        return o.size();
    }
    
    public Object peek(){
        return o.get(size()-1);
    }
    
    public Boolean isEmpty() {
        return o.isEmpty();
    }
}


/*
* Test 1
Stack stack = new Stack();
stack.push(1);
stack.push(2);
System.assert(stack.size() == 2);
System.assert(stack.isEmpty() == false);
System.assert(stack.peek() == 2);
stack.push(3);
stack.push(4);
System.assert(stack.isEmpty() == false);
System.assert(stack.size() == 4);
System.assert(stack.peek() == 4);
System.assert(stack.pop() == 4);
System.assert(stack.pop() == 3);
System.assert(stack.peek() == 2);
stack.push(100);
System.assert(stack.size() == 3);
System.assert(stack.pop() == 100);
System.assert(stack.pop() == 2);
System.assert(stack.pop() == 1);
System.assert(stack.size() == 0);
System.assert(stack.isEmpty() == true);
System.assert(stack.pop() == null);
*/
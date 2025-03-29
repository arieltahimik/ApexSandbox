/*
* #88 - Balanced Parentheses
* Given a String s containing only the six characters '(', '{', '[', ']', '}', and ')', 
* return true only if every opening bracket has a matching closing bracket of the same type, and all brackets are closed in the correct order.
* 
* Examples:
* 
* input: '()[(())]', Output: true
* Input: '([{}]))', Output: false
* Input: '([]}', Output: false
* 
* Hint:
* Use two variables to store your opening and closing delimiters.
* ### How can we create a LIFO / Last In First Out data structure
*/


public Boolean isValid(String s){
    List<String> stack = new List<String>();
    List<String> cls = new List<String>();
    List<String> chrList = s.split('');
    Integer ptr = 0;

    // Odd length is automatic unmatched
    if (Math.mod(s.length(),2) == 1) {
        return false;
    }

    for (String ch : chrList) {
        
        if (ch == '(' || ch == '[' || ch == '{') {  // Opening char
            // Put in stack
            stack.add(ch);
            ptr = stack.size() - 1;  // always point to the last opening character
        } else {
            // check closing ch against the stack
            if ( 
                (stack.get(ptr) == '(' && ch == ')') || 
                (stack.get(ptr) == '[' && ch == ']') ||
                (stack.get(ptr) == '{' && ch == '}') 
            ) {
                stack.remove(ptr);
                if (stack.size() == 0) {
                    ptr = 0;
                } else {
                    ptr = stack.size() - 1;
                }
            }        
        }
    }

    if (stack.size() == 0) {
        return true;
    } else {
        return false;
    }
}


/*
* Test 1
String test =  '{()}';
Boolean result = isValid(test);
System.assert(result == true);

* Test 2
String test = '((([[{}]])))';
System.assert(isValid(test) == true);    

* Test 3
String test =  '{]';      
Boolean result = isValid(test);
System.assert(result == false);    

* Test 4
String test =  '{';        
Boolean result = isValid(test);
System.assert(result == false);

* Test 5
String test =  ']';        
Boolean result = isValid(test);
System.assert(result == false);

* Test 6
String test =  '(()()';        
Boolean result = isValid(test);
System.assert(result == false);

* Test 7
String test =  '(()()))';        
Boolean result = isValid(test);
System.assert(result == false);

* Test 8
String test =  '((){})([])';        
Boolean result = isValid(test);
System.assert(result == true);
*/

//-------------------------------------------------------------

/*
ChatGPT's improvement to my solution:
public Boolean isValid(String s) {
    List<String> stack = new List<String>();
    Map<String, String> bracketMap = new Map<String, String>{
        ')' => '(', 
        ']' => '[', 
        '}' => '{'
    };
    Set<String> openingBrackets = new Set<String>{'(', '[', '{'};

    // Odd length is automatically invalid
    if (Math.mod(s.length(), 2) == 1) {
        return false;
    }

    for (String ch : s.split('')) {
        if (openingBrackets.contains(ch)) {  // Opening bracket
            stack.add(ch);
        } else if (bracketMap.containsKey(ch)) {  // Closing bracket
            if (stack.isEmpty() || stack.remove(stack.size() - 1) != bracketMap.get(ch)) {
                return false; // Mismatch or premature closing bracket
            }
        }
    }

    return stack.isEmpty();  // Valid if all brackets are matched
}
*/

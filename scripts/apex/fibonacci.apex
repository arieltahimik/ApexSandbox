/*
* #13 - Fibonacci
* The first two numbers in the fibonacci sequence are 1, and all other numbers in the sequence 
* are defined as the sum of the last two fibonacci numbers. The first 10 numbers in the fibonacci 
* sequence are 1, 1, 2, 3, 5, 8, 13, 21, 34, and 55.
* 
* Implement the function fibonacci that takes as input an Integer n and returns the nth fibonacci number. 
* Assume that n will always be greater than 0.
* 
* fibonacci(1) = 1
* fibonacci(2) = 1
* fibonacci(5) = 5
*/


public Integer fibonacci(Integer n) {
    Integer prev = 1, curr = 1;
    for (Integer i=3; i <= n; i++) {
        curr += prev;
        prev = curr - prev;
    }
    return curr;
}


Integer result = fibonacci(1);
System.debug(String.valueOf(result).leftPad(5) + ' <<< ' + 'fibonacci(1) should be 1');

result = fibonacci(2);
System.debug(String.valueOf(result).leftPad(5) + ' <<< ' + 'fibonacci(2) should be 1');

result = fibonacci(3);
System.debug(String.valueOf(result).leftPad(5) + ' <<< ' + 'fibonacci(3) should be 2');

result = fibonacci(4);
System.debug(String.valueOf(result).leftPad(5) + ' <<< ' + 'fibonacci(4) should be 3');

result = fibonacci(5);
System.debug(String.valueOf(result).leftPad(5) + ' <<< ' + 'fibonacci(5) should be 5');

result = fibonacci(10);
System.debug(String.valueOf(result).leftPad(5) + ' <<< ' + 'fibonacci(10) should be 55');

result = fibonacci(20);
System.debug(String.valueOf(result).leftPad(5) + ' <<< ' + 'fibonacci(20) should be 6765');
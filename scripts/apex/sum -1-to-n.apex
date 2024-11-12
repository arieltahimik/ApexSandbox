/*
* #16 - Sum 1 to N
* Implement the method sumToN that calculates and returns the sum of all numbers (inclusive) from 1 to n. 
* Assume that n will be non-zero positive integer.
* 
* sumToN(5) = 15
* 
* sumToN(2) = 3
*/

public Integer sumToN(Integer n) {
    Integer sum = 0;
    for (Integer i=1; i<=n; i++){
        sum += i;
    }
    return sum;
}

Integer result = sumToN(4);
System.debug('Sum of numbers 1 through 4 is ' + result);

result = sumToN(10);
System.debug('Sum of numbers 1 through 10 is ' + result);

result = sumToN(1);
System.debug('Sum of numbers 1 through 1 is ' + result);

result = sumToN(88);
System.debug('Sum of numbers 1 through 88 is ' + result);
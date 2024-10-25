/** 
 * #4 - Number Difference
 * Implement a function diff that calculates the absolute difference between two integers.
 * diff(5, 2) = 3
 * diff(2, 5) = 3
 * 
*/

public Integer diff(Integer a, Integer b) {
    //return math.abs(a - b);
    
    return (a >= b) ? a - b : b - a;
}

System.debug('diff >> ' + diff(5, 2));
System.debug('diff >> ' + diff(2, 5));
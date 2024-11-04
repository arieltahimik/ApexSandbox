/*
* #15 - Which Two
* Given Integers a, b, and c, determine if any two of them add up to the third and 
* return 'a', 'b', 'c' depending on which the sum is. If no two numbers add up to a third number, 
* return an empty string. Assume that multiple solutions do not exist.
* 
* whichTwo(5, 10, 5) = 'b'
* whichTwo(2, 0, 3) = ''
*/

public String whichTwo(Integer a, Integer b, Integer c) {
    return (a + b == c) ? 'c' : (a + c == b) ? 'b' : (b + c == a) ? 'a': '';
}

String result = whichTwo(4, 10, 6);
System.debug(result + ' >>> a and c add up to b');

result = whichTwo(14, 16, 30);
System.debug(result + ' >>> a and b add up to c');

result = whichTwo(14, -1, 15);
System.debug(result + ' >>> b and c add up to a');

result = whichTwo(0, -1, 15);
System.debug(result + '  >>> No two numbers add up to a third');
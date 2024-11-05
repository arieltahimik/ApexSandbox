/*
* #5 - Even or Odd
* Given an Integer, return 'even' if the Integer is even, or 'odd' if the Integer is odd. 
* Remember to use the Math.mod function.
*
* evenOrOdd(15) = 'odd'
* evenOrOdd(-64) = 'even'
*/
public String evenOrOdd(Integer num) {
    return Math.mod(num,2) == 0 ? 'even' : 'odd';
}

String str = evenOrOdd(0);
System.debug('0 returned ' + str);

str = evenOrOdd(255);
System.debug('255 returned ' + str);

str = evenOrOdd(-1022);
System.debug('-1022 returned ' + str);

str = evenOrOdd(-63);
System.debug('-63 returne ' + str);
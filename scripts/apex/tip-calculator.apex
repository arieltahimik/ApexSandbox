/*
* #137 - Tip Calculator
* Create a function that given a total bill, and an integer percentage value between 0 and 100, 
* computes the tip at the specified percentage. You can assume the percentage specified will 
* be an integer within the valid range.
*
* For an example, computeTip(200.0, 50) evaluates to 100.0, because 50% of 200 is 100.
*/

public Decimal computeTip(Decimal total, Integer percent) {
    return total * percent / 100;
}

/* Anonymous Apex */
Decimal tip = computeTip(300.00, 20);  //60.00
System.debug('tip >> ' + tip);

tip = computeTip(100.00, 15);  //15.00
System.debug('tip >> ' + tip);

tip = computeTip(38.57, 18);  //6.9426
System.debug('tip >> ' + tip);

tip = computeTip(16.50, 25);  //4.125
System.debug('tip >> ' + tip);
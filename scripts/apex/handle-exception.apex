/*
#97 - Handle Exception
Implement the method divide which takes two integers a and b as input, divides a by b using the / operator, and returns the result. 
If any exception occurs, the method should return the exception message.

Given the following test code:
String result = divide(10,0);
result should be 'Divide by 0';

Given the following test code:
String result = divide(100, 18);
result should be '5';. The result of integer division 100/19 is 5 with a remainder of 10.
*/


public String divide(Integer a, Integer b){
    if (a==null || b==null) {
        return 'Attempt to de-reference a null object';
    }
    try {
        return String.valueof(a / b);
    } catch (Exception e) {
        return e.getMessage(); //'Divide by 0';
    }
}


/*
*TODO: Create a Test Class

*Test 1
String result = divide(10,null);
String expected ='Attempt to de-reference a null object';
System.assertEquals(expected,result, 'Result does not match.');

*Test 2
String result = divide(10,5);
String expected ='2';
System.assertEquals(expected,result, 'Result does not match.');

*Test 3
String result = divide(18,5);
String expected ='3';
System.assertEquals(expected,result, 'Result does not match.');

*Test 4
String result = divide(243, 0);
String expected ='Divide by 0';
System.assertEquals(expected,result, 'Result does not match.');

*Test 5
String result = divide(null,10);
String expected ='Attempt to de-reference a null object';
System.assertEquals(expected,result, 'Result does not match.');
*/
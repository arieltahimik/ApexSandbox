/*
#70 - Even Numbers
Given a non-zero positive integer n, return a list of the first n non-zero positive even numbers, ordered ascending.

Example: evenNumbers(5) returns a list containing the numbers 2, 4, 6, 8, 10.
*/


public List<Integer> evenNumbers(Integer n) {
    //code here
    List<Integer> even = new List<Integer>();
    
    for (Integer i=2; even.size() < n; i+=2) {
        even.add(i);
    }
    return even;
}


/*

* Test 1
List<Integer> result = evenNumbers(1);
System.assertEquals(new List<Integer> {2}, result, 'First even number is 2');

* Test 2
List<Integer> result = evenNumbers(2);
System.assertEquals(new List<Integer> {2, 4}, result, 'First 2 even numbers are 2, 4');

* Test 3
List<Integer> result = evenNumbers(3);
System.assertEquals(new List<Integer> {2, 4, 6}, result, 'First 3 even numbers should be 2 through 6');

* Test 4
List<Integer> result = evenNumbers(10);
System.assertEquals(new List<Integer> {2, 4, 6, 8, 10, 12, 14, 16, 18, 20}, result, 'First 10 even numbers should be 2 through 20');

* Test 5
List<Integer> result = evenNumbers(100);
System.assertEquals(new List<Integer> {2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,168,170,172,174,176,178,180,182,184,186,188,190,192,194,196,198,200}, result, 'First 100 even numbers should be 2 through 200');
*/
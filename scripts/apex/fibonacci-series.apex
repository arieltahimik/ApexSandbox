/*
* #69 - Fibonacci Series
* The first two numbers in the fibonacci sequence are 1, and all other numbers in the sequence are defined as the sum of 
* the two preceding fibonacci numbers. The first 10 numbers in the fibonacci sequence are 1, 1, 2, 3, 5, 8, 13, 21, 34, and 55.
* 
* Given a non-zero positive integer n, return a list of integers of size n containing (in correct order) the first n numbers in the fibonacci series.
* 
* Example: fibonacciSeries(5) returns a list containing the numbers 1, 1, 2, 3, and 5.
*/


public List<Integer> fibonacciSeries(Integer n) {
    List<Integer> fibSeries = new List<Integer>();
    Integer prev = 1, curr = 1;

    if (n==1) {
        fibSeries.add(1);        
    } else if (n==2) {
        fibSeries.add(1);
        fibSeries.add(1);
    } else {
        fibSeries.add(1);
        fibSeries.add(1);
        for (Integer i=3; i <= n; i++) {
            curr += prev;
            prev = curr - prev;
            fibSeries.add(curr);
        }
    }
    return fibSeries;
}

/*
* Test 1
List<Integer> result = fibonacciSeries(1);
System.assertEquals(new List<Integer> {1}, result, 'Fibonacci series should be 1');

* Test 2
List<Integer> result = fibonacciSeries(2);
System.assertEquals(new List<Integer> {1, 1}, result, 'Fibonacci series should be 1, 1');

* Test 3
List<Integer> result = fibonacciSeries(3);
System.assertEquals(new List<Integer> {1, 1, 2}, result, 'Fibonacci series should be 1, 1, 2');

* Test 4
List<Integer> result = fibonacciSeries(5);
System.assertEquals(new List<Integer> {1, 1, 2, 3, 5}, result, 'Fibonacci series should be 1, 1, 2, 3, 5');
*/
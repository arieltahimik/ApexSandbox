/*
#71 - Positive Integers
A positive integer is defined as an integer greater than zero. Implement the method positiveIntegers that takes 
as input a list of integers numbers, and returns a new list with non-positive integers removed.

Example: positiveIntegers(new List {2, -3, 6, 2}) returns a list containing the numbers 2, 6, 2.
*/


public List<Integer> positiveIntegers(List<Integer> numbers) {
    List<Integer> positives = new List<Integer>();
    for (Integer num : numbers) {
        if (num > 0) {
            positives.add(num);
        }
    }
    return positives;
}


/*
* Test 1
List<Integer> input = new List<Integer> {2, -1, 5, -2, 2, 6, 0, 0, -2, -1, 5};
List<Integer> result = positiveIntegers(input);
System.assertEquals(new List<Integer> {2, 5, 2, 6, 5}, result, 'The resulting list should contain 2, 5, 2, 6, 5');
System.assertEquals(new List<Integer> {2, -1, 5, -2, 2, 6, 0, 0, -2, -1, 5}, input, 'The input list should remain unchanged.');

* Test 2
List<Integer> result = positiveIntegers(new List<Integer> { });
System.assertEquals(0, result.size(), 'The resulting list should be empty');

* Test 3
List<Integer> result = positiveIntegers(new List<Integer> { 0, 0, 0 });
System.assertEquals(0, result.size(), 'The resulting list should be empty');

* Test 4
List<Integer> result = positiveIntegers(new List<Integer> { -1, -2, -3 });
System.assertEquals(0, result.size(), 'The resulting list should be empty');

* Test 5
List<Integer> result = positiveIntegers(new List<Integer> { 5898, 2846, 6548 });
System.assertEquals(new List<Integer> { 5898, 2846, 6548 }, result, 'The resulting list should contain 5898, 2846, 6548');
*/
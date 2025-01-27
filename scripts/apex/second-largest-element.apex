/*
#68 - Second Largest Element
Given an list of Integers numbers, return the second largest integer in the list. 
Assume that the input list will always contain at least two distinct integers.

Example: secondLargest(new List {5, 2, 8, 4, 8, 1}) evaluates to 5 because 5 is the second largest Integer in the array, 
with 8 being the largest integer.

Note: While not necessary to solving this problem, it may be be helpful to know the 
smallest possible Integer: -2,147,483,648. However, you cannot set an integer directly 
to this value because of a bug in Apex, but you can do the following:

Integer num = -2147483647 - 1;
*/

public Integer secondLargest(List<Integer> numbers) {
    List<Integer> numList = new List<Integer>();
    numbers.sort();
    Set<Integer> numSet = new Set<Integer>(numbers);
    numList.addAll(numSet);
    return numList.get(numList.size()-2);
}


/*
* Test 1
Integer result = secondLargest(new List<Integer> {5, 2, 8, 4, 8, 1});
System.assertEquals(5, result, 'Second largest integer should be 5');

* Test 2
Integer result = secondLargest(new List<Integer> {5, 2, 8, 4, 6, 1});
System.assertEquals(6, result, 'Second largest integer should be 6');

* Test 3
Integer result = secondLargest(new List<Integer> {8, 2, 8, 4, 5, 1});
System.assertEquals(5, result, 'Second largest integer should be 5');

* Test 4
Integer result = secondLargest(new List<Integer> {5, 2, 7, 4, 8, 1, 7, 3, 1, 5, 3, 5, 2, 4, 7, 6, 8, 3, 4});
System.assertEquals(7, result, 'Second largest integer should be 7');

* Test 5
Integer result = secondLargest(new List<Integer> {-2147483647 - 1, -2147483647, -2147483646});
System.assertEquals(-2147483647, result, 'Second largest integer should be -2147483647');

* Test 6
Integer result = secondLargest(new List<Integer> {2147483647, -2147483645, 2147483646});
System.assertEquals(2147483646, result, 'Second largest integer should be 2147483646');

* Test 7
Integer result = secondLargest(new List<Integer> {3250, 2986});
System.assertEquals(2986, result, 'Second largest integer should be 2986');

* Test 8
Integer result = secondLargest(new List<Integer> {2945, 3200});
System.assertEquals(2945, result, 'Second largest integer should be 2945');

* Test 9
Integer result = secondLargest(new List<Integer> {2945, 3200, 2945, 3200});
System.assertEquals(2945, result, 'Second largest integer should be 2945');

* Test 10
List<Integer> inputList = new List<Integer>();
for (Integer i=0; i<100; i++) inputList.add(50);
for (Integer i=0; i<100; i++) inputList.add(100);
Integer result = secondLargest(inputList);
System.assertEquals(50, result, 'Second largest integer should be 50');

* Test 11
List<Integer> inputList = new List<Integer>();
for (Integer i=0; i<100; i++) inputList.add(100);
for (Integer i=0; i<100; i++) inputList.add(50);
Integer result = secondLargest(inputList);
System.assertEquals(50, result, 'Second largest integer should be 50');

* Test 12
List<Integer> inputList = new List<Integer>();
for (Integer i=0; i<100; i++) inputList.add(100);
for (Integer i=0; i<50; i++) inputList.add(50);
for (Integer i=0; i<50; i++) inputList.add(100);
Integer result = secondLargest(inputList);
System.assertEquals(50, result, 'Second largest integer should be 50');

* Test 13
List<Integer> inputList = new List<Integer>();
for (Integer i=0; i<500; i++) inputList.add(i);
Integer result = secondLargest(inputList);
System.assertEquals(498, result, 'Second largest integer should be 498');

* Test 14
List<Integer> inputList = new List<Integer>();
for (Integer i=-1; i>-500; i--) inputList.add(i);
Integer result = secondLargest(inputList);
System.assertEquals(-2, result, 'Second largest integer should be -2');

* Test 15
List<Integer> inputList = new List<Integer>();
for (Integer i=0; i>-500; i--) inputList.add(i);
inputList[200] = 1;
Integer result = secondLargest(inputList);
System.assertEquals(0, result, 'Second largest integer should be 0');
*/
/*
#124 - Segregate Even and Odd numbers
Given a List of Integers (List<Integer>), write a function that segregates even and odd numbers. 
The function should put all even numbers first, and then odd numbers.

You are required to modify the list that is passed. 
Try doing so without creating any extra lists, which would mean an O(1) space complexity.

Example 1:
Input: [5, 4, 3, 2, 1, 6]
Output: [2, 4, 6, 1, 3, 5]

The above output may vary since you are not required to order the even and odd numbers in any sequence. 
As long as even numbers come before odd numbers, the answer is valid. 
[4, 6, 2, 5, 1, 3] and [6, 4, 2, 3, 1, 5] are also valid answers.

Example 2:
Input: [12, 34, 45, 9, 8, 90, 3]
Output: [8, 12, 34, 90, 3, 9, 45]

Hints:
Increment left index while we see even at left
Decrement right index while we see odd at right. 
Keep doing this in two pointer approach

Swap left and right value if they are in the wrong position.

To Check even and odd use Math.mod(Integer, Integer) function from the Math class.
*/


public static void segregateEvenOdd(List<Integer> numbers){
    //code here
    Integer left = 0;
    Integer right   = numbers.size() - 1;

    while (left < right) {
        if (Math.mod(numbers[left],2) == 0) {
            left++;
        } else if (Math.mod(numbers[right],2) != 0) {
            right--;
        } else {
            Integer temp = numbers[left];
            numbers[left] = numbers[right];
            numbers[right] = temp;
            left++;
            right--;
        }
    }
}



/* 
* Test 1
List<Integer> inputArray = new List<Integer>{12, 34, 45, 9, 8, 90, 3};
segregateEvenOdd(inputArray);
Integer evenCount = 0, oddCount = 0;
List<Integer> evens = new List<Integer>();
List<Integer> odds = new List<Integer>();
for(Integer e : inputArray){
    if(Math.mod(e, 2) == 0){
        evenCount++;
     }
    else if(Math.mod(e, 2) == 1){
        oddCount++;
     }
}
for(Integer i = 0 ; i < evenCount ; i++){
      evens.add(inputArray[i]);
}
for(Integer i = evenCount ; i < evenCount + oddCount ; i++){
      odds.add(inputArray[i]);
}
evens.sort();
odds.sort();
evens.addAll(odds);
List<Integer> outputArray = new List<Integer>{8, 12, 34, 90, 3, 9, 45};
System.assertEquals(outputArray, evens,'Expected Output : '+ outputArray + ' and Actual Output : ' + inputArray);

* Test 2
List<Integer> inputArray = new List<Integer>{12, 10, 9, 45, 2, 10, 10, 45};
segregateEvenOdd(inputArray);
Integer evenCount = 0, oddCount = 0;
List<Integer> evens = new List<Integer>();
List<Integer> odds = new List<Integer>();
for(Integer e : inputArray){
      if(Math.mod(e, 2) == 0){
           evenCount++;
       }
      else if(Math.mod(e, 2) == 1){
            oddCount++;
       }
}
for(Integer i = 0 ; i < evenCount ; i++){
     evens.add(inputArray[i]);
}
for(Integer i = evenCount ; i < evenCount + oddCount ; i++){
      odds.add(inputArray[i]);
}
evens.sort();
odds.sort();
evens.addAll(odds);
List<Integer> outputArray = new List<Integer>{2, 10, 10, 10, 12, 9, 45, 45};
System.assertEquals(outputArray, evens,'Expected Output : '+ outputArray + ' and Actual Output : ' + inputArray);

* Test 3
List<Integer> inputArray = new List<Integer>{1, 2, 3, 4, 5, 6};
segregateEvenOdd(inputArray);
Integer evenCount = 0, oddCount = 0;
List<Integer> evens = new List<Integer>();
List<Integer> odds = new List<Integer>();
for(Integer e : inputArray){
       if(Math.mod(e, 2) == 0){
            evenCount++;
        }
        else if(Math.mod(e, 2) == 1){
             oddCount++;
         }
}
for(Integer i = 0 ; i < evenCount ; i++){
        evens.add(inputArray[i]);
}
for(Integer i = evenCount ; i < evenCount + oddCount ; i++){
      odds.add(inputArray[i]);
}
evens.sort();
odds.sort();
evens.addAll(odds);
List<Integer> outputArray = new List<Integer>{2, 4, 6, 1, 3, 5};
System.assertEquals(outputArray, evens,'Expected Output : '+ outputArray + ' and Actual Output : ' + inputArray);

* Test 4
List<Integer> inputArray = new List<Integer> { 2 };
segregateEvenOdd(inputArray);
System.assertEquals(new List<Integer> {2}, inputArray);

* Test 5
List<Integer> inputArray = new List<Integer> { 3 };
segregateEvenOdd(inputArray);
System.assertEquals(new List<Integer> {3}, inputArray);

* Test 6
List<Integer> inputArray = new List<Integer>();
segregateEvenOdd(inputArray);
System.assertEquals(0, inputArray.size(), 'Input array should be untouched');

* Test 7
Set<Integer> evens = new Set<Integer>();
Set<Integer> odds = new Set<Integer>();
List<Integer> input = new List<Integer>();
for (Integer i=1; i<10000; i+=2) {
  odds.add(i);
  evens.add(i+1);
  input.add(i);
  input.add(i+1);
}
segregateEvenOdd(input);
for (Integer i=0; i < 4999; i++) {
  if (!evens.contains(input[i])) System.assert(false, 'Odd number ' + input[i] + ' found at index ' + i);
}
for (Integer i=5000; i < 10000; i++) {
  if (!odds.contains(input[i])) System.assert(false, 'Even number ' + input[i] + ' found at index ' + i);
}
*/
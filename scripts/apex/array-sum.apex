/*
* #1 - Array Sum
* Implement the method arraySum that takes as input a non-empty list of Integers numbers, and returns the sum of all numbers in the list.
* 
* Example: arraySum(new List {5, 2, 3}) evaluates to 10.
*/


public static Integer arraySum(List<Integer> numbers) {
    Integer sum = 0;
    
    for (Integer n=0; n < numbers.size(); n++) {
        sum += numbers.get(n);
    }

    /* -- OR simply -- */

    // for (Integer n : numbers) {
    //     sum += n;
    // }
    
    return sum;
}

/*
* Test 1
Integer result = arraySum(new List<Integer>());
System.assertEquals(0, result);

* Test 2
Integer result = arraySum(new List<Integer> {25, 12, 31, -15, 29});
System.assertEquals(82, result);
*/
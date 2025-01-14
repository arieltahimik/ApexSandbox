/*
* #2 - Largest Element
* Implement the method findLargest that takes as input a non-empty list of Integers nums, and returns the largest Integer in the list.
* 
* Example: findLargest(new List {5, 2, 8, 4, 2, 1}) evaluates to 8 because 8 is the largest Integer in the list.
*/


public static Integer findLargest(List<Integer> nums) {
	
    Integer largest=-1;

    // for (Integer i=0; i<nums.size(); i++) {
    //     if (nums.get(i) > largest) {
    //         largest = nums.get(i);
    //     }
    // }
    // return largest;

    // -OR-

    for (Integer n : nums) {
        if (n > largest) {
            largest = n;
        }
    }
    return largest;
    
}


/*
* Test 1
Integer result = findLargest(new List<Integer> {25, 12, 31, -15, 29});
System.assertEquals(31, result);

* Test 2
Integer result = findLargest(new List<Integer> {-2, -5, -13, -1});
System.assertEquals(-1, result);

* Test 3
Integer result = findLargest(new List<Integer> {0});
System.assertEquals(0, result);
*/
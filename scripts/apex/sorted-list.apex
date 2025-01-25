/*
* #73 - Sorted List
* A list is considered to be sorted ascending when no element in the list is smaller than the preceding element if one is present. 
* Similarly, a list is considered sorted descending if no element in the list is larger than the preceding element if any.
* 
* Implement the method isSorted that takes as input a list of integers numbers, returns true if the list is sorted 
* in any direction (acsending or descending), and returns false otherwise.
* 
* Example: isSorted(new List<Integer> {5, 2, 0, -1}) evaluates to true because the input list is sorted descending.
*/


public static Boolean isSorted(List<Integer> numbers) {
    if (numbers.size() <= 1) {
        return true;
    }
    Boolean isAscending = true;
    Boolean isDescending = true;
    for (Integer i = 1; i < numbers.size(); i++) {
        if (numbers.get(i) < numbers.get(i - 1)) {
            isAscending = false;
        }
        if (numbers.get(i) > numbers.get(i - 1)) {
            isDescending = false;
        }
    }
    return isAscending || isDescending;
}


/*
* Test 1
List<Integer> nums = new List<Integer>();
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'An empty list meets the condition of being sorted both ascending and descending');

* Test 2
List<Integer> nums = new List<Integer> { 0 };
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'A list with only one element meets the condition of being sorted both ascending and descending');

* Test 3
List<Integer> nums = new List<Integer> { 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42 };
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'A list with the same element repeating meets the condition of being sorted both ascending and descending');

* Test 4
List<Integer> nums = new List<Integer> { 42, 0, 42 };
Boolean result = isSorted(nums);
System.assertEquals(false, result, 'List breaks sorting condition at index 2');

* Test 5
List<Integer> nums = new List<Integer> { 42, 420, 42 };
Boolean result = isSorted(nums);
System.assertEquals(false, result, 'List breaks sorting condition at index 2');

* Test 6
List<Integer> nums = new List<Integer> { 42, 42, 0, 420, 420 };
Boolean result = isSorted(nums);
System.assertEquals(false, result, 'List breaks sorting condition at index 2');

* Test 7
List<Integer> nums = new List<Integer>();
for (Integer i=1; i<1000; i += i) {
    nums.add(i);
}
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'List was sorted ascending');

* Test 8
List<Integer> nums = new List<Integer>();
for (Integer i=1; i<1000; i += i) {
    nums.add(i);
    nums.add(i);
}
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'List was sorted ascending');

* Test 9
List<Integer> nums = new List<Integer>();
for (Integer i=-1; i>-1000; i += i) {
    nums.add(i);
}
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'List was sorted descending');

* Test 10
List<Integer> nums = new List<Integer>();
for (Integer i=-1; i>-1000; i += i) {
    nums.add(i);
    nums.add(i);
}
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'List was sorted descending');

* Test 11
List<Integer> nums = new List<Integer>();
for (Integer i=-500; i<1000; i++) {
    nums.add(i);
}
Boolean result = isSorted(nums);
System.assertEquals(true, result, 'List was sorted ascending');

* Test 12
List<Integer> nums = new List<Integer>();
for (Integer i=-500; i<1000; i++) {
    nums.add(i);
}
nums[nums.size() - 1] = 0;
Boolean result = isSorted(nums);
System.assertEquals(false, result, 'List breaks sorting condition at last element');
*/
/*
* #80 - Duplicate Integers
* Implement the method containsDuplicates that takes as input a list of integers, 
* returns true if the list has more than one occurence of the same number, and 
* returns false if every element in the list is unique.
* 
* Examples:
* 
* containsDuplicates(new List {5, 50, 500, 1000}) evaluates to false
* 
* containsDuplicates(new List {5, 50, 500, 50}) evaluates to true
*/

public Boolean containsDuplicates(List<Integer> nums) {
    Set<Integer> numSet = new Set<Integer>();
    for (Integer num : nums) {
        if (numSet.contains(num)) {
            return true;
        }
        numSet.add(num);
    }
    return false;
}


/*
* Test 1
List<Integer> nums = new List<Integer>();
Boolean result = containsDuplicates(nums);
System.assertEquals(false, result, 'Empty list contains no duplicates');

* Test 2
List<Integer> nums = new List<Integer> { 128 };
Boolean result = containsDuplicates(nums);
System.assertEquals(false, result, 'List with single element contains no duplicates');

* Test 3
List<Integer> nums = new List<Integer> { 0, 0 };
Boolean result = containsDuplicates(nums);
System.assertEquals(true, result, 'List contained duplicate elements');

* Test 4
List<Integer> nums = new List<Integer> { 0, 10, 11, 12, 9, 7, 6, 0 };
Boolean result = containsDuplicates(nums);
System.assertEquals(true, result, 'List contained duplicate elements');

* Test 5
List<Integer> nums = new List<Integer>();
for (Integer i=0; i<35000; i++) {
    nums.add(i*2);
}
nums[30000] = 33;
nums[34000] = 33;
Boolean result = containsDuplicates(nums);
System.assertEquals(true, result, 'Succesfully found duplicate in list of 35k numbers');

* Test 6
List<Integer> nums = new List<Integer>();
for (Integer i=0; i<500; i++) {
    nums.add(i*10);
}
nums[100] = -10;
nums[101] = -25;
nums[201] = -5;
Boolean result = containsDuplicates(nums);
System.assertEquals(false, result, 'List of 500 contained no duplicates');
*/
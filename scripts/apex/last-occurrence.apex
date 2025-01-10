/*
* #139 - Last Occurrence
* Find the last occurrence of Integer target in a list of integers nums and return its index. 
* If the target is not found, return -1
* 
* For instance, in the list of integers {4, 6, 1, 9, 7, 9, 2}, the function would return index 0 for 
* the target 4, index 5 for target 9 (occurs twice), and -1 for target 3 (not found).
*/


public static Integer findLast(List<Integer> nums, Integer target) {
    // code here
    Integer index = 0;
    Boolean found = false;
    for (Integer i=0; i<nums.size(); i++)
    {
        if (nums[i] == target) {
            index = i;
            found = true;
        }
    }
 
    return found ? index : -1;
 }


/*
* Test 1
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1, 11, 15, -8};
Integer result = findLast(nums, 12);
Assert.areEqual(-1, result);

* Test 2
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1};
Integer result = findLast(nums, 8);
Assert.areEqual(4, result);

* Test 3
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1, 11};
Integer result = findLast(nums, 11);
Assert.areEqual(6, result);

* Test 4
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1, 11};
Integer result = findLast(nums, -4);
Assert.areEqual(3, result);

* Test 5
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1, 11};
Integer result = findLast(nums, 5);
Assert.areEqual(0, result);

* Test 6
List<Integer> nums = new List<Integer>{1, 1, 1, 1, 1};
Integer result = findLast(nums, 1);
Assert.areEqual(4, result);

* Test 7
List<Integer> nums = new List<Integer>{ };
Integer result = findLast(nums, 0);
Assert.areEqual(-1, result);
*/
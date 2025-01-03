/*
* Given a list of Integers nums and an Integer target, count number of times target is found in nums. 
* If the target is not in the list, simply return 0.
*/


public Integer findTargetCount(List<Integer> nums, Integer target) {
    Integer found = 0;
    for (Integer n : nums) {
        if (n == target) {
            found += 1;
        }
    }
    return found;
}


/*
* Test 1
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1, 11, -12, 15};
Integer result = findTargetCount(nums, 12);
Assert.areEqual(0, result);

* Test 2
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1, 11};
Integer result = findTargetCount(nums, 8);
Assert.areEqual(2, result);

* Test 3
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1};
Integer result = findTargetCount(nums, 5);
Assert.areEqual(1, result);

* Test 4
List<Integer> nums = new List<Integer>{5, 2, 8, -4, 8, 1, 11};
Integer result = findTargetCount(nums, -4);
Assert.areEqual(1, result);

* Test 5
List<Integer> nums = new List<Integer>{0, 0, 0, 0, 0};
Integer result = findTargetCount(nums, 0);
Assert.areEqual(5, result);

* Test 6
List<Integer> nums = new List<Integer>{ };
Integer result = findTargetCount(nums, 10);
Assert.areEqual(0, result);
*/
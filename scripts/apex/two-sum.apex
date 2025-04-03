/*
* #108 - Two Sum
* You are given a list of unsorted integers and a target value. 
* If the list contains two values that add up to target, return a list containing the indexes of the two numbers. 
* You may not use a number more than once. Every input will have a solution.
* 
* Tests will include lists of up to 10,000 members. Only solutions that run in linear time will pass.
* 
* Example 1
* Input: nums = [2,8,11,15], target = 10 Output: [0,1] nums[0] + nums[1] = 10
* 
* Example 2
* Input: nums = [6,6,3,22, 1, 11, 56], target = 4 Output: [2,4] nums[2] + nums[4] = 4
* 
* Hints:
* - A solution that uses only one pass (a single loop) will pass.
* - Think of the complement. If you see a number n at an index, seeing target - n at a different index means you have an answer.
* - Use a Map to maintain a collection of numbers already seen along with their indexes.
*/


public static List<Integer> twoSum(List<Integer> nums, Integer target) {
    Map<Integer, Integer> numsMap = new Map<Integer, Integer>();
    List<Integer> result = new List<Integer>();

    for (Integer i=0; i<nums.size(); i++) {
        // Check if the complement (target - nums[i]) exists in the map
        if (!numsMap.containsKey(target - nums[i])) {
            numsMap.put(nums[i], i);
        } else {
            result.add(numsMap.get(target - nums[i]));
            result.add(i);
        }
    }

    return result;
}


/*
* Test 1
List<Integer> integers = new List<Integer>{2, 7, 11, 15};
List<Integer> result = new List<Integer>();
result = twoSum(integers, 18);
System.assert(result.contains(1) && result.contains(2) && result.size() == 2);

* Test 2
List<Integer> integers2 = new List<Integer>{3, 3};
List<Integer> result = new List<Integer>();
result = twoSum(integers2, 6);
System.assert(result.contains(1) && result.contains(0) && result.size() == 2);

* Test 3
List<Integer> integers3 = new List<Integer>{3, 2, 4};
List<Integer> result = new List<Integer>();
result = twoSum(integers3, 6);
System.assert(result.contains(1) && result.contains(2) && result.size() == 2);

* Test 4
List<Integer> integers4 = new List<Integer>{1, 9, 3, 4, 40, 6, 37, 8, 2, 7, 38, 39, 5};
List<Integer> result = new List<Integer>();
result = twoSum(integers4, 78);
System.assert(result.contains(4) && result.contains(10) && result.size() == 2);

* Test 5
List<Integer> integers5 = new List<Integer>();
for (Integer i = 0; i <= 10000; i ++){
    integers5.add(i);
}
List<Integer> results  = twoSum(integers5, 19999);
System.assert(results.contains(9999)  && results.contains(10000) && results.size() == 2);
*/


/* ChatGPT Solution
public static List<Integer> twoSum(List<Integer> nums, Integer target) {
    // Map to store the number and its index
    Map<Integer, Integer> numsMap = new Map<Integer, Integer>();

    // Iterate through the list
    for (Integer i = 0; i < nums.size(); i++) {
        Integer num = nums[i];
        Integer complement = target - num;

        // Check if the complement exists in the map
        if (numsMap.containsKey(complement)) {
            // Return the indices as soon as the solution is found
            return new List<Integer>{numsMap.get(complement), i};
        }

        // Store the current number and its index in the map
        numsMap.put(num, i);
    }

    return new List<Integer>(); // This won't be reached as a solution is guaranteed
}
*/
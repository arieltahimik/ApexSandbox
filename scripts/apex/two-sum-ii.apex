/*
* #109 - Two Sum II
* Given a list of integers that are sorted in ascending order, return the indices of the two numbers that add up to a target value.
* 
* Constraints:
* 
* Each problem will have only one solution if any. You may return null or an empty list of no solution is found.
* You should attempt to solve this in constant space and linear run-time. This means a solution using nested loops or a Map will not work.
* Inputs can contain up two 10,000 values
* Example 1
* Input: prices = [2,7,11,15], target = 9
* Output: [0, 1], because the sum of 2 and 7 is 9.
* Example 2
* Input: [4, 8, 10, 22], target = 30
* Output: [1, 3] because the sum of 8 and 22 is 30
* Nested for-loops will result in hitting the CPU limit, and using a Map would mean linear space complexity. Both of these solution will fail.
* 
* Hint 1:
* A linear solution (O(n) complexity) means that the time it takes to run should grow linearly with the size of the input 
* for sufficiently large inputs. A solution that uses nested loops to compare each element with the other has O(n^2) complexity 
* or quadratic growth: for a list of size n, we execute the comparison logic n^2 times.
* 
* Constant space complexity (O(1) space) means that the memory used should not grow with the size of the input for sufficiently large inputs. 
* If we use a Map, it means the memory required grows linearly with the size of the array (array of size n means possibly n entries in the Map).
* 
* Hint 2:
* Use a two-pointer solution, taking advantage of the fact that the list is sorted.
*
* NOTE: I need to double-check this solution (copy of two-sum.apex) coz I just added the num.sort() and it worked here.
*/


public List<Integer> twoSum(List<Integer> nums, Integer target){
    //code here
    Map<Integer, Integer> numsMap = new Map<Integer, Integer>();
     List<Integer> result = new List<Integer>();

     nums.sort();

     for (Integer i=0; i<nums.size(); i++) {
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
List<Integer> result = new List<Integer>();
List<Integer> integers = new List<Integer>{2, 7, 11, 15};
result = twoSum(integers, 9);
System.assert(result.size() == 2 && result.contains(0) && result.contains(1));

* Test 2
List<Integer> result = new List<Integer>();
List<Integer> integers = new List<Integer>{4, 8, 10, 22};
result = twoSum(integers, 30);
System.assert(result.size() == 2 && result.contains(1) && result.contains(3));

* Test 3
List<Integer> result = new List<Integer>();
List<Integer> integers = new List<Integer>{4, 8, 10, 22, 23, 24, 50, 100, 101, 107, 108};
result = twoSum(integers, 150);
System.assert(result.size() == 2 && result.contains(6) && result.contains(7));

* Test 4
List<Integer> result = new List<Integer>();
List<Integer> integers = new List<Integer>{4, 8, 10, 22, 23, 24, 50, 100, 101, 107, 108};
result = twoSum(integers, 12);
System.assert(result.size() == 2 && result.contains(0) && result.contains(1));

* Test 5
List<Integer> integers = new List<Integer>();
for (Integer i = 0; i <= 10000; i++) {
    integers.add(i + 1);
}
List<Integer> result = new List<Integer>();
result = twoSum(integers, 20000);
System.assert(result.size() == 2 && result.contains(9998) && result.contains(10000));

* Test 6
List<Integer> integers4 = new List<Integer>{1, 9, 3, 4, 8, 6, 37, 40, 2, 7, 38, 39, 5};
List<Integer> result = new List<Integer>();
result = twoSum(integers4, 78);
System.assert(!(result != null && result.size() == 2 && result.contains(7) && result.contains(10)), 
'A two-pointer solution would have failed to find the answer in an unsorted array.');
*/
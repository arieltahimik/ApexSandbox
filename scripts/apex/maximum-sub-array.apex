/*
* #110 - Maximum Sub-array
* Given a list of Integers that can contain positive and negative values and an Integer target, 
* calculate the maximum subarray of the length of the target.
* 
* Example
* Input: nums: [2, 3, -5, 1, 8] and target = 2
* Output: 9
* The largest continuous subarray is 1 and 8.
* 
* Constraints
* - Your solution should be able to handle data sets up to 5000 members
* - Try to use a sliding window technique
* - Video Tutorial: https://youtu.be/iorsrwiQXNI
*/


public static Integer maxSubArraySum(List<Integer> nums, Integer target){
    Integer maxSum = 0;
    Integer curSum = 0;

    // Get sum of first target subarray
    for (Integer i=0; i<target; i++) {
        // This will be our initial maxSum value
        curSum += nums[i];
    }

    // Loop thru the numbers and get curSum by 
    // excluding left element ( left window: nums[i - target] )
    // and slide window to right to include current element ( nums[i] )
    for (Integer i=target; i<nums.size(); i++) {
        curSum = curSum - nums[i - target] + nums[i];

        // Get max value using Math.max
        maxSum = Math.max(curSum, maxSum);
    }

    return maxSum;
}


/*
* Test 1
List<Integer> data = new List<Integer>{2,6,9,2,1,8,5,6,3};
System.assertEquals(15, maxSubArraySum(data, 2));

* Test 2
List<Integer> data = new List<Integer>{2,-1, 6,9,2,-5, 1,8,5,6,3};
System.assertEquals(19, maxSubArraySum(data, 3));

* Test 3
List<Integer> data = new List<Integer>{2,-1, 6,9,2,-5, 1,8,5,-10, 6,3};
System.assertEquals(17, maxSubArraySum(data, 3));

* Test 4
List<Integer> data = new List<Integer>{2,-1, 6,9,-3, 2,-5, 1,8,5,-10, 6,3};
System.assertEquals(14, maxSubArraySum(data, 3));

* Test 5
List<Integer> data = new List<Integer>();
for (Integer i = 0; i < 5000; i++) {
    data.add(i);
}
System.assertEquals(4999, maxSubArraySum(data, 1));
*/
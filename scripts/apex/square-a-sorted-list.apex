/*
* #115 - Square a sorted list
* Given a list of integers sorted in ascending order return a list of integers that 
* contains the square of each value in the input list sorted in ascending order.
* 
* Example 1
* Input: nums = [2, 4, 6, 8]
* Output: 1; [4, 16, 36, 64];
* 
* Example 2
* Input: nums = [-10, 2, 4, 6, 8]
* Output: [4, 16, 36, 64, 100]
* 
* Hints and Extra Challenge:
* A squared negative is a positive number.
* 
* For an efficient solution, Implement a two pointer solution to compare values.
*/


public static List<Integer> squareList(List<Integer> nums){
    //solution here
    List<Integer> result = new List<Integer>();

    // for (Integer num : nums) {
    //     result.add(num * num);
    // }
    // result.sort();

    //-OR- Without using sort()

    Integer left = 0;
    Integer right = nums.size() - 1;
    
    for (Integer i = 0; i < nums.size(); i++) {
        result.add(0);
    }
    for (Integer i = nums.size() - 1; i >= 0; i--) {
        if (Math.abs(nums[left]) > Math.abs(nums[right])) {
            result[i] = nums[left] * nums[left];
            left++;
        } else {
            result[i] = nums[right] * nums[right];
            right--;
        }
    }

    return result;
}


/*
* Test 1
List<Integer> test = new List<Integer>{-10, 2, 4, 6, 8};
System.assert(squareList(test)[4] == 100);
System.assert(squareList(test)[3] == 64);
System.assert(squareList(test)[2] == 36);
System.assert(squareList(test)[1] == 16);
System.assert(squareList(test)[0] == 4);

* Test 2
List<Integer> test = new List<Integer>{ 2, 4, 6 };
System.assert(squareList(test)[2] == 36);
System.assert(squareList(test)[1] == 16);
System.assert(squareList(test)[0] == 4);

* Test 3
List<Integer> test = new List<Integer>{ -10, -5, 2, 4, 6 };
System.assert(squareList(test)[4] == 100);
System.assert(squareList(test)[3] == 36);
System.assert(squareList(test)[2] == 25);
System.assert(squareList(test)[1] == 16);
System.assert(squareList(test)[0] == 4);
*/

/*
### Pseudocode for Squaring a Sorted List  

1. **Initialize Two Pointers:**  
   - Set a `left` pointer at the start of the list (`index 0`).  
   - Set a `right` pointer at the end of the list (`last index`).  
   - Create a new list (same size as the input) to store the squared values in sorted order.  

2. **Iterate from Right to Left in the Output List:**  
   - Start filling the result list from the highest index down to `0` (descending).  
   - Compare the absolute values of `nums[left]` and `nums[right]`.  

3. **Choose the Larger Absolute Value:**  
   - If `abs(nums[left]) > abs(nums[right])`:  
     - Square `nums[left]` and place it in the result list at the highest available index.  
     - Move the `left` pointer to the right (`left++`).  
   - Else:  
     - Square `nums[right]` and place it in the result list at the highest available index.  
     - Move the `right` pointer to the left (`right--`).  

4. **Continue Until All Elements Are Processed:**  
   - Repeat step 3 until `left` crosses `right`.  

5. **Return the Sorted Squared List.**
*/
/*
* #81 - Same Elements
* Implement the method sameElements that takes as input two lists of integers nums1 and nums2, and returns true if 
* and only if every integer in one of the lists is also contained by the other list. This means that for sameElements to 
* return true, there should be no integer in nums1 that is not present in nums2, and no integer in nums2 that is not present in nums1.
* 
* Note that the lists may contain duplicates and your solution should assume no specific ordering.
* 
* Examples:
* 
* sameElements(new List {5, 7}, new List {7, 5, 5}) evaluates to true
* 
* sameElements(new List {5, 7}, new List {7, 5, 9}) evaluates to false
*/


public Boolean sameElements(List<Integer> nums1, List<Integer> nums2) {
    Set<Integer> set1 = new Set<Integer>();
    Set<Integer> set2 = new Set<Integer>();
    set1.addAll(nums1);
    set2.addAll(nums2);
    return set1 == set2;
}


/*

* Test 1
List<Integer> nums1 = new List<Integer>();
List<Integer> nums2 = new List<Integer>();
Boolean result = sameElements(nums1, nums2);
System.assertEquals(true, result, 'The two empty lists contain the same elements');

* Test 2
List<Integer> nums1 = new List<Integer> { 0 };
List<Integer> nums2 = new List<Integer>();
Boolean result1 = sameElements(nums1, nums2);
Boolean result2 = sameElements(nums2, nums1);
System.assertEquals(true, !result1 && !result2, 'One of the lists contains 0 which is not present in the other list');

* Test 3
List<Integer> nums1 = new List<Integer> { 0, 1, -5, 6, 0 };
List<Integer> nums2 = new List<Integer> { -5, 1, 0, 1, 6, -5};
Boolean result1 = sameElements(nums1, nums2);
Boolean result2 = sameElements(nums2, nums1);
System.assertEquals(true, result1 && result2, 'The two lists contain the same elements');

* Test 4
List<Integer> nums1 = new List<Integer> { 0, 1, -5, 6, 0, -2 };
List<Integer> nums2 = new List<Integer> { -5, 1, 0, 1, 6, -5};
Boolean result1 = sameElements(nums1, nums2);
Boolean result2 = sameElements(nums2, nums1);
System.assertEquals(true, !result1 && !result2, 'One of the lists contains -2 which is not present in the other list');

* Test 5
List<Integer> nums1 = new List<Integer>();
List<Integer> nums2 = new List<Integer>();
Integer count = 20000;
for (Integer i=0; i<count; i++) {
    nums1.add(i);
    nums2.add(count - i - 1);
}
Boolean result1 = sameElements(nums1, nums2);
Boolean result2 = sameElements(nums2, nums1);
System.assertEquals(true, result1 && result2, 'The two lists of 20k each contain the same elements');

* Test 6
List<Integer> nums1 = new List<Integer>();
List<Integer> nums2 = new List<Integer>();
Integer count = 20000;
for (Integer i=0; i<count; i++) {
    nums1.add(i);
    nums2.add(count - i - 1);
}
nums2.add(-1);
Boolean result1 = sameElements(nums1, nums2);
Boolean result2 = sameElements(nums2, nums1);
System.assertEquals(true, !result1 && !result2, 'The two lists of 20k each do contain the same elements');
*/
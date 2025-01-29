/*
#77 - Intersection
An intersection between two sets A and B is a set that contains all elements present in both A and B. 
For example, the intersection of sets {1, 5, 10} and {1, 3, 5} is {1, 5}, since 1 and 5 are the only two elements present in both sets.

Implement the method setIntersection that takes as input two sets of integers set1 and set2 and returns the intersection of the two sets. 
The method should not modify the original sets.

Given the following test code:


Set<Integer> set1 = new Set<Integer> {1, 2, 3};
Set<Integer> set2 = new Set<Integer> {4, 3, 2};
Set<Integer> set3 = setUnion(set1, set2);
The set set3 contains the numbers 2 and 3.
*/


public Set<Integer> setIntersection(Set<Integer> set1, Set<Integer> set2) {
    // Set<Integer> set3 = new Set<Integer>();
    // for (Integer num : set1) {
    //     if (set2.contains(num)) {
    //         set3.add(num);
    //     }
    // }
    // return set3;

    // -OR-
    Set<Integer> set3 = set1.clone();
    Boolean result = set3.retainAll(set2);
    return set3;
}


/*
* Test 1
Set<Integer> set1 = new Set<Integer> {0, 5, 10, 15, 20};
Set<Integer> set2 = new Set<Integer> {5, 10, 11, 12, 13, 14, 15};
Set<Integer> expected = new Set<Integer> {5, 10, 15};
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(5, set1.size(), 'set1 should have 5 elements');
System.assertEquals(7, set2.size(), 'set2 should have 7 elements');
System.assertEquals(expected, result, 'Resulting set should have had same elements as the expected set.');

* Test 2
Set<Integer> set1 = new Set<Integer> { 50000, 60000 };
Set<Integer> set2 = new Set<Integer> {70000, 80000, 90000};
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(2, set1.size(), 'set1 should have 2 elements');
System.assertEquals(3, set2.size(), 'set2 should have 3 elements');
System.assertEquals(0, result.size(), 'Resulting set should have had 0 elements');

* Test 3
Set<Integer> set1 = new Set<Integer> { 50000, 60000, 70000 };
Set<Integer> set2 = new Set<Integer> { 70000, 80000, 90000 };
Set<Integer> expected = new Set<Integer> { 70000 };
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(3, set1.size(), 'set1 should have 2 elements');
System.assertEquals(3, set2.size(), 'set2 should have 3 elements');
System.assertEquals(expected, result, 'Resulting set should have been same as set of expected elements');

* Test 4
Set<Integer> set1 = new Set<Integer>();
Set<Integer> set2 = new Set<Integer> {-1000, -500, -1500};
Set<Integer> expected = new Set<Integer> { };
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(0, set1.size(), 'set1 should have 0 elements');
System.assertEquals(3, set2.size(), 'set2 should have 2 elements');
System.assertEquals(0, result.size(), 'Resulting set should have had 0 elements.');

* Test 5
Set<Integer> set1 = new Set<Integer> { 0 };
Set<Integer> set2 = new Set<Integer> { 0 };
Set<Integer> expected = new Set<Integer> { 0 };
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(1, set1.size(), 'set1 should have 1 elements');
System.assertEquals(1, set2.size(), 'set2 should have 0 elements');
System.assertEquals(expected, result, 'Resulting set should have had same elements as the expected set.');

* Test 6
Set<Integer> set1 = new Set<Integer>();
Set<Integer> set2 = new Set<Integer>();
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(0, set1.size(), 'set1 should have 1 elements');
System.assertEquals(0, set2.size(), 'set2 should have 0 elements');
System.assertEquals(0, result.size(), 'Resulting set should have had 0 elements');

* Test 7
Set<Integer> set1 = new Set<Integer>();
Set<Integer> set2 = new Set<Integer>();
Set<Integer> expected = new Set<Integer> { 0 };
for (Integer i=0; i<1000; i++) {
    set1.add(i);
    set2.add(i*-1);
}
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(1000, set1.size(), 'set1 should have 999 elements');
System.assertEquals(1000, set2.size(), 'set2 should have 0 elements');
System.assertEquals(expected, result, 'Resulting set should have same elements as expected');

* Test 8
Set<Integer> set1 = new Set<Integer>();
Set<Integer> set2 = new Set<Integer>();
Set<Integer> expected = new Set<Integer>();
for (Integer i=0; i<100; i++) {
    set1.add(i);
}
for (Integer i=50; i<150; i++) {
    set2.add(i);
}
for (Integer i=50; i<100; i++) {
    expected.add(i);
}
Set<Integer> result = setIntersection(set1, set2);
System.assertEquals(expected, result, 'Resulting set should have same elements as expected');
*/
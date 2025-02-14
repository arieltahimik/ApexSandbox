/*
* #120 - Merge Two Sorted Lists
* A classic computer science problem is to merge to sorted lists. 
* In this problem you must write a method that accepts two sorted lists of integers: list1, and list2 
* and returns a list sorted in ascending order containing all the values in list1 and list2.
* 
* Example 1
* input: list1 = [1, 3, 5, 7], list2=[2, 4, 6, 8];
* output: [1, 2, 3, 4, 5, 6, 7, 8]
* 
* Example 2
* input: list1 = [1, 3, 5, 7], list2=[2, 4, 6, 8, 9, 10, 100];
* output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 100];
*/

public static List<Integer> mergeLists(List<Integer> list1, List<Integer> list2){
    if (list2.isEmpty()) {
        return list1;
    } else if (list1.isEmpty()) {
        return list2;
    }

    /*
    list1.addAll(list2);
    list1.sort();
    return list1;
    */

    
    // -OR -
    /*
    List<Integer> merged = new List<Integer>();
    Integer i = 0;  // index pointer for list1
    Integer j = 0;  // index pointer for list2

    // Compare and add to new list the lower value
    while (i < list1.size() && j < list2.size()) {
        if (list1[i] < list2[j]) {
            merged.add(list1[i]);
            i++;
        } else {
            merged.add(list2[j]);
            j++;
        }
    }

    // If there are any more element from list1 then continue adding
    while (i < list1.size()) {
        merged.add(list1[i]);
        i++;
    }

    // If there are any more element from list2 then continue adding
    while (j < list2.size()) {
        merged.add(list2[j]);
        j++;
    }

    return merged;
    */


    // -OR-

    // Space-optimized solution, no additional List created
    // Utilized list1 as the storage space for merged elements

    Integer i = 0;  // pointer for list1
    Integer j = 0;  // pointer for list2
    
    while (i < list1.size() && j < list2.size()) {
        if (list1.get(i) <= list2.get(j)) {
            i++;
        } else {
            list1.add(i, list2.get(j));
            i++;
            j++;
        }
    }
    
    // Add remaining elements from list2, if any
    while (j < list2.size()) {
        list1.add(list2.get(j));
        j++;
    }
    
    return list1;
}


/*
* Test 1
List<Integer> list1 = new List<Integer>{2, 4, 6, 8};
List<Integer> list2 = new List<Integer>{1, 3, 5, 7, 9};
List<Integer> solution = mergeLists(list1, list2);
System.assert(solution.size() == 9);
System.assert(solution[0] == 1 && solution[1] == 2 && solution[2] == 3 && solution[3] == 4 
        && solution[4] == 5 && solution[5] == 6 && solution[6] == 7 && solution[7] == 8 && solution[8] == 9);

* Test 2
List<Integer> list1 = new List<Integer>{2, 4, 6, 8};
List<Integer> list2 = new List<Integer>();
List<Integer> solution = mergeLists(list1, list2);
System.assert(solution.size() == 4);
System.assert(solution[0] == 2 && solution[1] == 4 && solution[2] == 6 && solution[3] == 8 );

* Test 3
List<Integer> list1 = new List<Integer>{2, 4, 6, 8};
List<Integer> list2 = new List<Integer>{100, 101, 102};
List<Integer> solution = mergeLists(list1, list2);
System.assert(solution.size() == 7);
System.assert(solution[0] == 2 && solution[1] == 4 && solution[2] == 6 && solution[3] == 8 && solution[4] == 100 && solution[5] == 101 && solution[6] == 102 );

* Test 4
List<Integer> list1 = new List<Integer>{3, 4, 6, 8};
List<Integer> list2 = new List<Integer>{1, 2, 100, 101, 102};
List<Integer> solution = mergeLists(list1, list2);
System.assert(solution.size() == 9);
System.assert(solution[0] == 1 && solution[1] == 2 && solution[2] == 3 && solution[3] == 4 && solution[4] == 6 && solution[5] == 8 && solution[6] == 100 && solution[7] == 101 && solution[8] == 102 );

* Test 5
List<Integer> list1 = new List<Integer>{1, 2, 3};
List<Integer> list2 = new List<Integer>();
List<Integer> solution = mergeLists(list1, list2);
System.assert(solution.size() == 3);
System.assert(solution[0] == 1 && solution[1] == 2 && solution[2] == 3 );

* Test 6
List<Integer> list1 = new List<Integer>();
List<Integer> list2 = new List<Integer>();
List<Integer> expected = new List<Integer>();
for (Integer i=0; i<50000; i+=2) {
  list1.add(i);
  list2.add(i+1);
  expected.add(i);
  expected.add(i+1);
}
List<Integer> solution = mergeLists(list1, list2);
System.assertEquals(expected, solution);
*/
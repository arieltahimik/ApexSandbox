/*
* #107 - Defragging
* You are given a List of Integers which represents memory with -1 representing empty space and all other Integers representing. 
* Your task is to move all the empty spaces to the end of the list while maintaining the order of the rest of the elements.
* 
* Note: that you must do this in-place without making a copy of the array.
* 
* Examples:
* 
* Input: [-1,1,-1,3,12]
* Output: [1,3,12,-1,-1]
* 
* Input: [-1,1,0,15,2]
* Output: [1,0,15,2,-1]
* 
* Hints:
* - Can we use a two-pointer approach?
* - Have one pointer point to the first empty space, and the second pointer to the next available memory location.
*/


public void defragging(Integer[] memory)
{
    // List size is 0 or 1
    if (memory.size() < 2) {
        return;
    }
    
    // List has no -1 (empty space)
    if (!memory.contains(-1)) {
        return;
    }

    // List got all -1
    Set<Integer> empty = new Set<Integer>();
    empty.addAll(memory);
    if (empty.size() == 1 && empty.contains(-1)) {
        return;  // only -1
    }

    // left pointer will track the position of the last non-empty element
    Integer left = 0;

    // Iterate through the list with the right pointer
    for (Integer right=0; right<memory.size(); right++) {

        // If the current element is not -1, swap it with left pointer
        if (memory[right] != -1) {
            // Swap memory[left] and memory[right]
            Integer temp = memory[left];
            memory[left] = memory[right];
            memory[right] = temp;

            // Move the left pointer to the next position
            left++;
        }
    }
}


/*
* Test 1
Integer[] memory = new Integer[] {-1,1,0,15,2};
defragging(memory);
Integer[] expected = new Integer[]{1,0,15,2,-1};
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 2
Integer[] memory = new Integer[]{45192,-1,-659,-52359,-99225,-75991,-1,-15155,27382,59818,-1,-30645,-17025,81209,887,64648};
defragging(memory);
Integer[] expected = new Integer[]{45192,-659,-52359,-99225,-75991,-15155,27382,59818,-30645,-17025,81209,887,64648,-1,-1,-1};
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 3
Integer[] memory = new Integer[]{0};
Integer[] expected= new Integer[]{0};
defragging(memory);
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 4
Integer[] memory = new List<Integer>();
Integer[] expected= new List<Integer>();
defragging(memory);
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 5
Integer[] memory = new Integer[]{-1, -1, -1};
Integer[] expected= new Integer[]{-1, -1, -1};
defragging(memory);
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 6
Integer[] memory = new Integer[]{-1, -1, -1, 3, 5};
Integer[] expected= new Integer[]{3, 5, -1, -1, -1};
defragging(memory);
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 7
Integer[] memory = new Integer[]{-1};
Integer[] expected= new Integer[]{-1};
defragging(memory);
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 8
Integer[] memory = new Integer[]{5, 2, 20};
Integer[] expected= new Integer[]{5, 2, 20};
defragging(memory);
System.assertEquals(expected,memory,'The returned list is not as expected');

* Test 9
List<Integer> memory = new List<Integer>();
List<Integer> expected = new List<Integer>();
for (Integer i=0; i<10000; i++) {
  memory.add(i);
  memory.add(-1);
  expected.add(i);
}
for (Integer i=0; i<10000; i++) expected.add(-1);
defragging(memory);
System.assertEquals(expected,memory,'The returned list is not as expected');
*/
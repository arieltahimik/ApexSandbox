/*
#119 - Consecutive Ones
Given a List of Integers containing only binary numbers (0 and 1), return the maximum number of consecutive 1s appearing in the List.
Example : Input: [1,1,0,1,1,1,1] Output: 4. The array has 2 consecutive 1s starting index 0, and 4 consecutive 1s starting index 3.
*/


public Integer maxConsecutiveOnes(Integer[] numbers) {
    Integer seq = 0;
    Integer lastCount = 0;
    Boolean changed = false;
    Boolean withOnes = numbers.contains(1);

    if (!withOnes) {
        return 0;
    }

    for (Integer num : numbers)
    {
        if (num==1) {
            seq += 1;
        } else {
            if (seq > lastCount) {  // Added to check for sequences 
                lastCount = seq;    // in the middle - Test #6
            }
            seq = 0;
        }
    }
    // capture the last sequence of ones after the loop ends
    lastCount = seq > lastCount ? seq : lastCount;
    
    return lastCount;
}


/*
* Test 1
Integer result = maxConsecutiveOnes(new Integer[]{1,0,1,1,0,1,1,1,1});
System.assertEquals(4, result, 'There are 4 consecutive 1');

* Test 2
Integer result = maxConsecutiveOnes(new Integer[]{1,1,1,0,1,1});
System.assertEquals(3, result, 'There are 3 consecutive 1');

* Test 3
Integer result = maxConsecutiveOnes(new Integer[]{});
System.assertEquals(0, result, 'There is no consecutive 1');

* Test 4
Integer result = maxConsecutiveOnes(new Integer[]{0,0});
System.assertEquals(0, result, 'There is no consecutive 1');

* Test 5
Integer result = maxConsecutiveOnes(new Integer[]{1,1,0,1,1});
System.assertEquals(2, result, 'There are 2 consecutive 1');

* Test 6 - Added this to check for sequences in the middle
Integer result = maxConsecutiveOnes(new Integer[]{0,1,1,1,2,1,1,4});
System.assertEquals(3, result, 'There are 3 consecutive 1');
*/
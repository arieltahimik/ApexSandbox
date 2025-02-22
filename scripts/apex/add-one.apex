/*
* #125 - Add One
* A large integer number is given as a List of Integers from 0 to 9. 
* You have to add 1 to that number and modify the list to represent the resulting number.
* 
* Example 1:
* Input: number = [1,2,3]
* Output: [1,2,4]
* 
* Explanation: The array represents the integer 123.
* Incrementing by one gives 123 + 1 = 124.
* Thus, the result should be [1,2,4].
* 
* Example 2:
* Input: number = [9]
* Output: [1,0]
* 
* Explanation: The array represents the integer 9.
* Incrementing by one gives 9 + 1 = 10.
* Thus, the result should be [1,0].
* 
* Example 3:
* Input: number = [1,2,9]
* Output: [1,3,0]
* 
* Explanation: The array represents the integer 129.
* Incrementing by one gives 129 + 1 = 130.
* Thus, the result should be [1,3,0].
*/


public void plusOne(List<Integer> numbers) {
    // code here
    // if (numbers == null || numbers.isEmpty()) {
    //     numbers.clear(); 
    //     numbers.add(1); // Edge case: Modify list to [1] instead of returning a new list
    //     return;
    // }

    Integer carry = 1; // Start with 1 to add
    for (Integer i = numbers.size() - 1; i >= 0; i--) {
        Integer sum = numbers.get(i) + carry; // Get the current digit
        numbers.set(i, Math.mod(sum, 10));
        carry = sum / 10; // Determine carry

        if (carry == 0) {
            return; // No more carry, stop execution
        }
    }

    // If there's still a carry after the loop, insert it at the beginning
    if (carry > 0) {
        numbers.add(0, carry);
    }
}


/*
* Test 1
List<Integer> input = new List<Integer>{1,2,3,4};
plusOne(input);
List<Integer> expected = new List<Integer>{1,2,3,5};
System.assertEquals(expected, input, '1234 + 1 = 1235');

* Test 2
List<Integer> input = new List<Integer>{9};
plusOne(input);
System.assertEquals(new List<Integer>{1,0}, input, '9 + 1 = 10');

* Test 3
List<Integer> input = new List<Integer>{9,9};
plusOne(input);
System.assertEquals(new List<Integer>{1,0,0}, input, '99 + 1 = 100');

* Test 4
List<Integer> input = new List<Integer>{9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9};
plusOne(input);
System.assertEquals(new List<Integer>{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, input, '99999999999999999999 + 1 = 100000000000000000000');

* Test 5
List<Integer> input = new List<Integer>();
List<Integer> output = new List<Integer> {1};
for (Integer i=0; i<500; i++) {
    input.add(9);
    output.add(0);
}
plusOne(input);
System.assertEquals(output, input, 'Adding 1 to five hundred 9 digits should result in 1 followed 500 zeroes.');

* Test 6
List<Integer> input = new List<Integer>{5,6,8,9};
plusOne(input);
System.assertEquals(new List<Integer>{5,6,9,0}, input, '5689 + 1 = 5690');

* Test 7
List<Integer> input = new List<Integer>{5,6,9,9};
plusOne(input);
System.assertEquals(new List<Integer>{5,7,0,0}, input, '5699 + 1 = 5700');

* Test 8
List<Integer> input = new List<Integer>{4,9,9,9};
plusOne(input);
System.assertEquals(new List<Integer>{5,0,0,0}, input, '4999 + 1 = 5000');

* Test 9
List<Integer> input = new List<Integer>{0};
plusOne(input);
System.assertEquals(new List<Integer>{1}, input, '0 + 1 = 1');

* Test 10
List<Integer> input = new List<Integer>{1, 0};
plusOne(input);
System.assertEquals(new List<Integer>{1,1}, input, '10 + 1 = 11');
*/
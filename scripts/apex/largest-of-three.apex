/*
* #3 - Largest of Three
* Given three Integers, return the largest
*/

public static Integer findLargest(Integer num1, Integer num2, Integer num3) {
	//return (num1 >= num2 && num1 >= num3) ? num1 : (num2 >= num1 && num2 >= num3) ? num2 : num3;
    return math.max(num1, math.max(num2, num3));
}

Integer result = findLargest(5, 3, 8);
System.debug('Largest >>> ' + result);

result = findLargest(9, 3, 5);
System.debug('Largest >>> ' + result);

result = findLargest(-4, -1, -5);
System.debug('Largest >>> ' + result);

result = findLargest(0, 0, 0);
System.debug('Largest >>> ' + result);
/*
#136 - Number Average
Given a list of decimals, return the average rounded to two decimal places.

Example:
List numbers = new List{10.5, 20, 45, 89}
average(numbers) = 41.12

The average computes to 41.125, which is rounded to 41.12 using the default "half even" rounding method.
*/

public Decimal average(List<Decimal> numbers){

    Integer size = numbers.size();
    Decimal sum = 0;

    for (Decimal num : numbers) {
        sum += num;
    }

    return (sum/size).setScale(2);
    // -OR-
    //return sum.divide(size, 2, System.RoundingMode.HALF_EVEN);

}


/*
* Test 1
Decimal result = average(new List<Decimal> {10.5, 20, 45, 89});
System.assertEquals(41.12, result);

* Test 2
Decimal result = average(new List<Decimal> {1.224, 12.4234, 19.44, 23, 31.223});
System.assertEquals(17.46, result);

* Test 3
Decimal result = average(new List<Decimal> {15.535});
System.assertEquals(15.54, result);
*/
/*
* #7 - Prime Number
* A prime number is a number greater than 1 that is not evenly divisible by any number greater than one and smaller than itself. 
* For example, 13 is a prime number because it is not evenly divisible by any number between 1 and 13.
* Implement the function isPrime that takes as input an integer greater than 1, 
* returns true if the integer is a prime number, and returns false otherwise. Assume that the input will always be greater than 1.
* 
* isPrime(10) = false. 10 is not a prime number because it is evenly divisible by 2 and 5.
* isPrime(23) = true. 23 is a prime number because it is not evenly divisible by any number from 2 to 22.
*/

public Boolean isPrime(Integer num) {
    for (Integer i=2; i<num; i++) {
        if (Math.mod(num,i) == 0)
            return false;
    }
    return true;
}

Boolean result = isPrime(2);
System.debug('2 is a prime number? >>> ' + result);

result = isPrime(3);
System.debug('3 is a prime number? >>> ' + result);

result = isPrime(4);
System.debug('4 is a prime number? >>> ' + result);

result = isPrime(5);
System.debug('5 is a prime number? >>> ' + result);

result = isPrime(12);
System.debug('12 is a prime number? >>> ' + result);

result = isPrime(1333);
System.debug('1333 is a prime number? >>> ' + result);

result = isPrime(1987);
System.debug('1987 is a prime number? >>> ' + result);

result = isPrime(1989);
System.debug('1989 is a prime number? >>> ' + result);

result = isPrime(5179);
System.debug('5179 is a prime number? >>> ' + result);
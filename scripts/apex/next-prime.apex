/*
* #8 - Next Prime
* A prime number is a number greater than 1 that is not evenly divisible by any number greater than one and smaller than itself. 
* For example, 13 is a prime number because it is not evenly divisible by any number from 2 to 12.
* Implement the function nextPrime that takes as input an integer num and returns the smallest prime number greater than num.
* 
* nextPrime(10) = 11. 11 is the smallest prime number greater than 10
* nextPrime(8) = 11. 11 is the smallest prime number greater than 8
*/

public Integer nextPrime(Integer num) {
    if (num<2) return 2;
    while (!isPrime(++num));
    //for(;!isPrime(++num););
    return num;
}

public Boolean isPrime(Integer num) {
    for (Integer i=2; i<num; i++) {
        if (Math.mod(num,i) == 0)
            return false;
    }
    return true;
}

Integer result = nextPrime(1);
System.debug(result + ' is the smallest prime number larger than 1');

result = nextPrime(2);
System.debug(result + ' is the smallest prime number larger than 2');

result = nextPrime(3);
System.debug(result + ' is the smallest prime number larger than 3');

result = nextPrime(4);
System.debug(result + ' is the smallest prime number larger than 4');

result = nextPrime(30);
System.debug( result + ' is the smallest prime number larger than 30');

result = nextPrime(31);
System.debug( result + ' is the smallest prime number larger than 31');

result = nextPrime(-20);
System.debug(result + ' is the smallest prime number larger than -20');
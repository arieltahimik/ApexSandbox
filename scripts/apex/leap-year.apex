/*
* #6 - Leap Year
*
* A year is considered a leap year if it is evenly divisible by 4, 
* with the exception of years that are also evenly divisible by 100. 
* Years evenly divisible by 100 must also be evenly evenly divisible by 400 
* to be considered leap years. Implement a method isLeapYear that takes as 
* input an Integer year and returns true if the year is a leap year, and false otherwise.
*
* isLeapYear(1900) = false. 
* Year 1900 is evenly divisible by 4, but it is also evenly divisible by 100 which means it additionally 
* needs to be evenly divisible by 400 to qualify as a leap year. 1900 is not evenly divisible by 400.
*
* isLeapYear(2000) = true. Year 2000 is evenly divisible by 4. It is also evenly divisibly by 100, which means 
* it additionally needs to be evenly divisible by 400, which it is. Therefore, it is a leap year.
*
* isLeapYear(2004) = true. Year 2004 is evenly divisible by 4. It is not divisible by 100, and therefore a leap year.

* isLeapYear(1933) = false. Year 1933 is not evenly divisible by 4, and therefore not a leap year.
*/

public Boolean isLeapYear(Integer year) {
    if (Math.mod(year, 4) == 0 && Math.mod(year, 100) == 0 && Math.mod(year, 400) != 0) {
        return false;
    }

    if (Math.mod(year, 4) == 0)
        return true;
    else
        return false;
}

Boolean isLeap = isLeapYear(1900);
System.debug('1900 should not be a leap year');

isLeap = isLeapYear(2000);
System.debug('2000 should be a leap year');

isLeap = isLeapYear(1867);
System.debug('1867 should not be a leap year');

isLeap = isLeapYear(704);
System.debug('704 should be a leap year');

isLeap = isLeapYear(2003);
System.debug('2003 should not be a leap year');

isLeap = isLeapYear(2004);
System.debug('2004 should be a leap year');

isLeap = isLeapYear(800);
System.debug('800 should be a leap year');

isLeap = isLeapYear(1002);
System.debug('1002 should not be a leap year');
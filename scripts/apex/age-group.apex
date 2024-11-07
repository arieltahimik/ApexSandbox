/*
* #17 - Age Group
* Given a person's age, return their age group as a string: 
* 'Infant' for ages 0-1, 
* 'Child' for ages 2 - 14, 
* 'Youth' for ages 15 - 21, and 
* 'Adult' for ages 22+.
*
* ageGroup(5) = 'Child'
* ageGroup(15) = 'Youth'
*
*/

public String ageGroup(Integer n) {
    return 
        (n>=0  && n<=1)  ? 'Infant' :
        (n>=2  && n<=14) ? 'Child'  :
        (n>=15 && n<=21) ? 'Youth'  : 'Adult';
}

String result = ageGroup(0);
System.debug(' >>> 0 years old is an ' + result);

result = ageGroup(1);
System.debug(' >>> 1 years old is an ' + result);

result = ageGroup(2);
System.debug(' >>> 0 years old is a ' + result);

result = ageGroup(3);
System.debug(' >>> 3 years old is a ' + result);

result = ageGroup(13);
System.debug(' >>> 13 years old is a ' + result);

result = ageGroup(14);
System.debug(' >>> 14 years old is a ' + result);

result = ageGroup(15);
System.debug(' >>> 15 years old is a ' + result);

result = ageGroup(16);
System.debug(' >>> 16 years old is a ' + result);

result = ageGroup(20);
System.debug(' >>> 20 years old is a ' + result);

result = ageGroup(21);
System.debug(' >>> 21 years old is a ' + result);

result = ageGroup(22);
System.debug(' >>> 22 years old is an ' + result);

result = ageGroup(60);
System.debug(' >>> 60 years old is an ' + result);
/* 
* #90 - Ends With 0
* Given an integer, return true if the integer ends with 0, otherwise return false.
*
* isEndWithZero(12) == false
* isEndWithZero(1230) == true
*/


public Boolean isEndWithZero(Integer num){
    return (Math.mod(num, 10) == 0) ? true : false;
}

Boolean result = isEndWithZero(0);
System.debug(result + ' >> Number ends with 0');

result = isEndWithZero(12);
System.debug(result + ' >> Number does not ends with 0');

result = isEndWithZero(19);
System.debug(result + ' >> Number does not ends with 0');

result = isEndWithZero(5000);
System.debug(result + ' >> Number ends with 0');

result = isEndWithZero(-30);
System.debug(result + ' >> Number ends with 0');
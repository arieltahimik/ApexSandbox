/*
#93 - Convert 15-digit ID to 18-digit ID
Implement the method convert15to18DigitId(), which accepts a String of length 15 digit 
and returns a new String with 18 digit salesforce Id. 
If the input string length is not equal to 15 digits, then return '-1'.

Given the following test code:
String fifteenDigit = '0SO90000000PBDu';
String eighteenDigit = convert15to18DigitId(fifteenDigit);
eighteenDigit should be equal to '0SO90000000PBDuGAO'

Note:
Use case 1: You have exported a Salesforce report with Ids. These Ids are 15 characters. 
You want to ensure that these Ids are not altered by Excel, you need to manage them with 18 characters.

Use case 2: You need to compare Ids but your comparison mechanism is not case sensitive. 
You will have to extend them to 18 characters.
*/


public String convert15to18DigitId(String fifteenDigit)
{
    // Always check for null first to avoid error:
    // System.NullPointerException: Attempt to de-reference a null object
    if (fifteenDigit == null) return null;

    if (fifteenDigit.length() != 15) return '-1';    
    
    return (Id) fifteenDigit;
}


/*
* TODO: Create Test Class

* Test 1
String fifteenDigit = '0SO90000000PBDu';
String result  =  convert15to18DigitId(fifteenDigit);
System.assertEquals('0SO90000000PBDuGAO', result, 'Returned string does not match with expected string.');

* Test 2
String fifteenDigit = '0055f000005PM7z';
String result  =  convert15to18DigitId(fifteenDigit);
System.assertEquals('0055f000005PM7zAAG', result, 'Returned string does not match with expected string.');

* Test 3
String result = convert15to18DigitId(null);
System.assertEquals(null, null, 'Returned string should be null');

* Test 4
String result;
try{
    result = convert15to18DigitId('0983242');
}catch(Exception ex){
}
System.assertEquals('-1', result, 'Returned string should be -1');
*/
/*
#89 - Valid Palindrome
A String is a considered a valid palindrome if it reads the same forwards and backwards. 
For the purpose of this problem, we consider a String to be a valid palindrome if it reads 
the same forwards and backwards after after converting all characters to lowercase, 
and removing all characters that are not a number or a letter.

Given a String str, return true if is a valid palindrome given the definition above, and return false if it is not. 
Assume that the input will contain only English numbers and letters (0-9, a-z, A-Z) along with punctuation and spaces.

Examples:
isPalindrome('A man, a plan, a canal: Panama') returns true

isPalindrome('Panama') returns false
*/


public Boolean isPalindrome(String str){    
    // Pattern and Matcher enable you to search text using regular expressions.
    Pattern nonAlpha = Pattern.compile('[^a-zA-Z]');
    Matcher matcher = nonAlpha.matcher(str);

    // Convert to lowercase string
    String strToLowercase = matcher.replaceAll('').toLowerCase();
    List<String> strToCheck = new List<String>(strToLowercase.split(''));

    Integer strLength = strToCheck.size();
    Boolean palindrome = false;

    for (Integer i=0; i<strLength; i++) {
        if (strToCheck[i] == strToCheck[strLength-(i+1)]) {
            palindrome = true;
        } else {
            return false;
        }
    }
    return palindrome;
}


/*
* Resource Link: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_pattern_and_matcher_using.htm
* Test 1
String testString = 'A man, a plan, a canal: Panama';    
Boolean result = isPalindrome(testString);    
System.assertEquals(true, result, 'It is a palindrome');

* Test 2
String testString = 'A Toyota. Race fast, safe car. A Toyota';  
Boolean result = isPalindrome(testString); 
System.assertEquals(true, result, 'It is a palindrome');

* Test 3
String testString = 'A lot not new I saw as I went on to L.A';  
Boolean result = isPalindrome(testString);  
System.assertEquals(true, result, 'It is a palindrome');

* Test 4
String testString = 'race a car';  
Boolean result = isPalindrome(testString);    
System.assertEquals(false, result, 'It is not a palindrome');

* Test 5
String testString = '';
Boolean result = isPalindrome(testString);    
System.assertEquals(true, result, 'An empty string is a palindrome');

* Test 6
String testString = ',.,';
Boolean result = isPalindrome(testString);    
System.assertEquals(true, result, 'A string containing no alphanumeric characters is a palindrome');

* Test 7
String testString = 'a';
Boolean result = isPalindrome(testString);    
System.assertEquals(true, result, 'A string containing a single alphanumeric character is a palindrome');

* Test 8
String testString = 'ab';
Boolean result = isPalindrome(testString);    
System.assertEquals(false, result, 'A string containing two different alphanumeric characters is not a palindrome');

* Test 9
String testString = 'aA';
Boolean result = isPalindrome(testString);
System.assertEquals(true, result, 'A string containing two same alphanumeric characters is a palindrome');

* Test 10
String testString = 'abA';
Boolean result = isPalindrome(testString);
System.assertEquals(true, result, 'aba is a valid palindrome');
*/
/*
* #104 - Valid Anagram
* Two words are considered valid anagrams if they are composed of the exact same letters with the exact same frequency. 
* Implement the method isAnagram that takes as input two strings s1 and s2, and returns true if the two words are anagrams. 
* Assume that the two strings contain only lowercase alphabets a-z.
* 
* Examples:
* 
* isAnagram('apex', 'peax') == true
* 
* isAnagram('sandbox', 'sandpit') == false
*/


// TO-DO: Try to use a MAP to solve this problem

public boolean isAnagram(String s1, String s2) {
    //Code here
    if (s1 == null || s2 == null) {
        return false;
    }

    Boolean result = false;

    // Convert string to list so I can sort it later
    List<String> str1 = s1.split('');
    List<String> str2 = s2.split('');


    str1.sort();
    str1.remove(0);  // null is added by sort(), remove it

    str2.sort();
    str2.remove(0);

    // Convert list to string using join
    s1 = String.join(str1, '');
    s2 = String.join(str2, '');

    // Compare two strings if equal, true means it is anagram
    result = s1 == s2;
    return result;
}


/*
* Test 1
String s = 'anagram';
String t = 'nagaram';
System.assertEquals(true, isAnagram(s, t), 'Result not as expected');

* Test 2
String  s = 'rat';
String t = 'car';
System.assertEquals(false, isAnagram(s, t), 'Result not as expected');

* Test 3
String s = 'aa';
String  t = 'bb';
System.assertEquals(false, isAnagram(s, t), 'Result not as expected');

* Test 4
String s = 'aab';
String t = 'abb';
System.assertEquals(false, isAnagram(s, t), 'Result not as expected');

* Test 5
String s = 'aab';
String t = 'abbsdfs';
System.assertEquals(false, isAnagram(s, t), 'Result not as expected');

* Test 6
String  s = 'younglad';
String  t = 'anoldguy';
System.assertEquals(true, isAnagram(s, t), 'Result not as expected');

* Test 7
String  s = 'tommarvoloriddle';
String  t = 'iamlordvoldemort';
System.assertEquals(true, isAnagram(s, t), 'Result not as expected');

* Test 8
System.assertEquals(false, isAnagram(null, null), 'Result not as expected');
*/
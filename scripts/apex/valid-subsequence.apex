/*
* #112 - Valid Subsequence
* Given a method that takes two strings s1 and s2 return true if s1 is a subsequence of s2.
* 
* A valid subsequence means that string s1 can be formed from string s2 by deleting some characters, but maintaining the order.
* 
* Example 1
* Input: s1 = 'abc', s2 = 'aghlrbrrc'
* Output: true
* 
* Input: s1 = 'abc', s2 = 'caaab'
* Output: false
* 
* Constraints
* s1 and s2 will only consist of lowercase English letters.
* s2 will always be longer than s1
*/


public Boolean isSubSequence(String s1, String s2){
    //code here
    String strChk = '';
    Integer pos=0;
    for (String sb1 : s1.split('')) {
        //System.debug('sb1 >>> ' + sb1);
        Boolean found = false;
        for (Integer i=pos; i<s2.length(); i++) {
            //System.debug('s2 >>> ' + s2.split('')[i]);
            if (sb1 == s2.split('')[i] && !found) {                
                pos = i+1;
                found = true;                
            }            
        }
        if (found) {
            strChk += sb1;
            found = false;
        }
    }
    //System.debug('s1     >>> ' + s1);
    //System.debug('strChk >>> ' + strChk);
    if(s1==strChk) {
        return true;
    }
    return false;
}


/*
* Test 1
String s1 = 'abc';
String s2 = 'aaaccddhhc';
System.assert(isSubSequence(s1, s2) == false);

* Test 2
String s1 = 'abc';
String s2 = 'aaabhhc';
System.assert(isSubSequence(s1, s2) == true);

* Test 3
String s1 = 'man';
String s2 = 'hghtymppaqqtyaan';
System.assert(isSubSequence(s1, s2) == true);

* Test 4
String s1 = 'wood';
String s2 = 'tworraord';
System.assert(isSubSequence(s1, s2) == true);

* Test 5
String s1 = 'shark';
String s2 = 'tunafish';
System.assert(isSubSequence(s1, s2) == false);
*/
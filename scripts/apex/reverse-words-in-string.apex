/*
* #91 - Reverse Words In String
* Given a string that contains a sequence of words separated by spaces, 
* write a method that reverses the order of the characters in each word.
* You must maintain white space and the order of the words.
* 
* Example 1:
* Input: lets learn apex strings
* Output: stel nrael xepa sgnirts
* 
* Example 2:
* Input: DSA is fun
* Output: ASD si nuf
*
* Hints & Extra Challenges:
* Use spaces as delimiters. You can use String.split(' ') to convert a String into a list of Strings separated by space, 
* and use the String.join method to join them back into a single string.
* 
* In order to build your problem-solving skills, avoid the String.reverse() method.
* 
* Converting a string into a list of characters will make this easy. String.getChars() returns a list of integers where 
* each integer represents a character in the string. String.fromCharArray(str) converts a list of integers into a string. 
* Take a look at an ASCII table to see what the integer values for different characters are.
* 
* Think of a two-pointer solution when reversing an individual word.
* For even more challenge and a more efficient solution, avoid splitting by space. 
* Convert the entire string into an array of integers, manipulate the array, and convert it back into a String.
*/


public static String reverseWords(String str){
    
    List<String> words = s.split(' ');
    List<String> reversedWords = new List<String>();

    for (String w : words) {
        reversedWords.add(w.reverse());
    }

    return String.join(reversedWords, ' ');
}

/*
* Test 1
String s = 'lets learn apex strings';
System.assert(reverseWords(s) == 'stel nrael xepa sgnirts');

* Test 2
String s = 'DSA is fun';
System.assert(reverseWords(s) == 'ASD si nuf');

* Test 3
String s = '';
System.assert(reverseWords(s) == '');

* Test 4
String s = 'Practice every day!!';
System.assert(reverseWords(s) == 'ecitcarP yreve !!yad');
*/
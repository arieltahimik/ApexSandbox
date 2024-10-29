/*
* Given a work, prepend it with the correct indefinite article ("a" or "an") followed by a space based on the following rule: 
* words starting with a vowel (a, e, i, o, or u) are prepended with "an", while words starting with any other letter are prepended with "a".
*  
* aOrAn('apple') = 'an apple'
* aOrAn('banana') = 'a banana'
*/

public String aOrAn(String word) {
    // if (word.startsWith('a') ||
    //     word.startsWith('e') ||
    //     word.startsWith('i') ||
    //     word.startsWith('o') ||
    //     word.startsWith('u')) {
    //     return 'an ' + word;
    // } else {
    //     return 'a ' + word;
    // }
    
    //String firstLetter = word.substring(0, 1).toLowerCase();
    //return ('aeiou'.contains(firstLetter) ? 'an ' : 'a ') + word;

    return ('aeiou'.contains(word.substring(0, 1).toLowerCase()) ? 'an ' : 'a ') + word;
}

String word = 'apple';
System.debug('aOrAn(' + word + ') >> ' + aOrAn(word));

word = 'banana';
System.debug('aOrAn(' + word + ') >> ' + aOrAn(word));

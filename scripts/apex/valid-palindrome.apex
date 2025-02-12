// Apex provides patterns and matchers that enable you to search text using regular expressions.
Pattern nonAlphanumeric = Pattern.compile('[^a-zA-Z]');
Matcher matcher = nonAlphanumeric.matcher('A man, a plan, a canal: Panama');

// Convert to lowercase string
String str = (String) matcher.replaceAll('').toLowerCase();

Integer strLength = str.length();
System.debug('Length: >>> ' + strLength);
System.debug('String: >>> ' + str);

Boolean palindrome = false;
for (Integer i=0; i<strLength; i++) {
    if (str[i] == str[strLength-1]) {
        System.debug(str[i] + ' <==> ' + str[strLength-1] );
        palindrome = true;
    } else {
        palindrome = false;
    }
}

System.debug('Palindrome >>> ' + palindrome);

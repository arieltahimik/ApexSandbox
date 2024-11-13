/*
* #9 - Full Name
* 
* Given two non-empty strings firstName and lastName, return the name as a 
* single string with a space in between (firstName lastName).
* 
* formatName('Jane', 'Doe') = 'Jane Doe'
*/

public String formatName(String firstName, String lastName) {
    return firstname + ' ' + lastname;
}

String fullName = formatName('John', 'Doe');
System.debug(fullName + ' <<< concatenation result');

fullName = formatName('Mehdi', 'Maujood');
System.debug(fullName + ' <<< concatenation result');
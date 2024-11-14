/*
* #10 - Format Name
* Given two strings firstName and lastName, return the name in the format LastName, FirstName. 
* In case one of the names is null or empty, return only the non-empty part of the name. 
* If both are null or empty, return an empty string.
* 
* formatName('Jane', 'Doe') = 'Doe, Jane'
* formatName('Jane', '') = 'Jane'
*/

public String formatName(String firstName, String lastName) {
    if (String.IsNotBlank(firstName) && String.IsNotBlank(lastName))
        return lastName + ', ' + firstName;
    else if (String.IsNotBlank(firstName) && String.IsBlank(lastName))
        return firstName;
    else if (String.IsBlank(firstName) && String.IsNotBlank(lastName))
        return  lastName;
    else
        return '';
}

String fullName = formatName('John', 'Doe');
System.debug('Full name should be Doe, John' + ' >>> result: ' + fullName);

fullName = formatName('Jane', 'Doe');
System.debug('Full name should be Doe, Jane' + ' >>> result: ' + fullName);

fullName = formatName(null, 'Doe');
System.debug('Full name should be Doe' + ' >>> result: ' + fullName);

fullName = formatName('John', '');
System.debug('Full name should be John' + ' >>> result: ' + fullName);

fullName = formatName('', null);
System.debug('Full name should be an empty string' + ' >>> result: ' + fullName);
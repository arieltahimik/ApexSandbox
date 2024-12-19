/*
* #56 - Duplicate Contacts
* For this problem, we consider two Contacts as duplicates if they have the same phone number or the same email address.
* 
* Implement the method duplicateContacts that takes as input two Contact records c1 and c1, 
* returns true if they are duplicates, and returns false otherwise.
* 
* For example, given the following test data:
* 
* Contact c1 = new Contact(LastName = 'Doe', Email = 'robert@example.com');
* Contact c2 = new Contact(LastName = 'Doe', Email = 'robert.doe@example.com');
* duplicateContacts(c1, c2) == false because the two contacts do not have a phone number at all, and do not have a matching email address.
*/


public Boolean duplicateContacts(Contact c1, Contact c2) {
    //code here
    // if ((c1.Email == null && c2.Email == null) ||
    //     (c1.Phone == null && c2.Phone == null)) {
    //     return false;
    // }
    // return true;

    // All four are nulls => not duplicate
    if (c1.Email == null && c1.Phone == null && c2.Email == null && c2.Phone == null) {
        return false;
    }

    // Null emails but different phones
    if ((c1.Email == null && c2.Email == null) && (c1.Phone != c2.Phone)) {
        return false;
    }

    // Null phones but different emails
    if ((c1.Phone == null && c2.Phone == null) && (c1.Email != c2.Email)) {
        return false;
    }

    // May have Phones and/or Emails, but one or both are the same
    return true;
}


/*
* TODO: Create a test class

* Test 1
Contact c1 = new Contact(LastName = 'Doe', Email = 'robert@example.com');
Contact c2 = new Contact(lastName = 'Doe', Email = 'robert.doe@example.com');
Boolean result = duplicateContacts(c1, c2);
System.assertEquals(false, result, 'The contacts do not have the same Email.');


* Test 2
Contact c1 = new Contact(LastName = 'Doe');
Contact c2 = new Contact(lastName = 'Smith');
Boolean result = duplicateContacts(c1, c2);
System.assertEquals(false, result, 'The contacts do not have any email or phone');


* Test 3
Contact c1 = new Contact(LastName = 'Doe', Phone = '1234561234');
Contact c2 = new Contact(lastName = 'Smith', Phone = '7891231234');
Boolean result = duplicateContacts(c1, c2);
System.assertEquals(false, result, 'The contacts have no email address and different phone numbers');


* Test 4
Contact c1 = new Contact(LastName = 'Doe', Phone = '1234561234', Email = 'doe@example.com');
Contact c2 = new Contact(lastName = 'Smith', Phone = '1234561234', Email = 'smith@example.com');
Boolean result = duplicateContacts(c1, c2);
System.assertEquals(true, result, 'The contacts have the same phone numbers, but different email addresses');


* Test 5
Contact c1 = new Contact(LastName = 'Doe', Phone = '1234561234', Email = 'doe@example.com');
Contact c2 = new Contact(lastName = 'Smith', Phone = '7891231234', Email = 'doe@example.com');
Boolean result = duplicateContacts(c1, c2);
System.assertEquals(true, result, 'The contacts have the same phone numbers, but different email addresses');


* Test 6
Contact c1 = new Contact(LastName = 'Doe', Phone = '1234561234', Email = 'doe@example.com');
Contact c2 = new Contact(lastName = 'Smith', Phone = '1234561234', Email = 'doe@example.com');
Boolean result = duplicateContacts(c1, c2);
System.assertEquals(true, result, 'The contacts have the same phone numbers and same email addresses');
*/
/*
* #84 - Phonebook
* Implement the method phonebook that takes as input a list of Contacts, and returns a Map containing the full names as keys, 
* and the contact's phone number as values. Do not include contacts without a phone number into the phonebook.
* 
* For example, given the following contacts:
* 
* c1
* Name: 'Bryan McCartney'
* Phone: '2143452398'
* 
* c2
* Name: 'Janice Gonzalez'
* Phone: '6923849837'
* 
* The method call phonebook(new List {c1, c2}) should return a map containing the following key/value pairs:
* 
* 'Bryan McCartney' -> '2143452398'
* 'Janice Gonzalez' -> '6923849837'
*/


public Map<String, String> phonebook(List<Contact> contacts) {
    Map<String,String> phonebookMap = new Map<String,String>();
    for (Contact con : contacts) {
        if (con.Phone != null) {
            phonebookMap.put(con.Name, con.Phone);
        }
    }
    return phonebookMap;
}


/*
* Test 1
List<Contact> contacts = new List<Contact>();
String contactJson = '{' +
    '"Name": "John Doe",' +
    '"FirstName": "John",' +
    '"LastName": "Doe",' +
    '"Phone": "1234567890"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));
contactJson = '{' +
    '"Name": "Jane Doe",' +
    '"FirstName": "Jane",' +
    '"LastName": "Doe",' +
    '"Phone": "9876543210"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));
contactJson = '{' +
    '"Name": "John Smith",' +
    '"FirstName": "John",' +
    '"LastName": "Smith",' +
    '"Phone": "6824481122"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));
contactJson = '{' +
    '"Name": "Jane Smith",' +
    '"FirstName": "Jane",' +
    '"LastName": "Smith",' +
    '"Phone": "2142983874"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));

Map<String, String> result = phonebook(contacts);
Set<String> names = new Set<String> {'John Doe', 'Jane Doe', 'John Smith', 'Jane Smith'};
System.assertEquals(names, result.keySet(), 'Resulting Map should have the 4 names as keys');
System.assertEquals('9876543210', result.get('Jane Doe'), 'Jane Doe should have phone number 9876543210');
System.assertEquals('6824481122', result.get('John Smith'), 'John Smith should have phone number 6824481122');

* Test 2
List<Contact> contacts = new List<Contact>();
String contactJson = '{' +
    '"Name": "John Doe",' +
    '"FirstName": "John",' +
    '"LastName": "Doe"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));
contactJson = '{' +
    '"Name": "Jane Doe",' +
    '"FirstName": "Jane",' +
    '"LastName": "Doe",' +
    '"Phone": "9876543210"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));
contactJson = '{' +
    '"Name": "John Smith",' +
    '"FirstName": "Jane",' +
    '"LastName": "Smith",' +
    '"Phone": "6824481122"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));
contactJson = '{' +
    '"Name": "Jane Smith",' +
    '"Phone": "2142983874"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));

Map<String, String> result = phonebook(contacts);
Set<String> names = new Set<String> {'Jane Doe', 'John Smith', 'Jane Smith'};
System.assertEquals(names, result.keySet(), 'Resulting Map should have the 3 names as keys');
System.assertEquals('9876543210', result.get('Jane Doe'), 'Jane Doe should have phone number 9876543210');
System.assertEquals('6824481122', result.get('John Smith'), 'John Smith should have phone number 6824481122');

* Test 3
List<Contact> contacts = new List<Contact>();
String contactJson = '{' +
    '"Name": "John Doe",' +
    '"FirstName": "John",' +
    '"LastName": "Doe"' +
    '}';
contacts.add((Contact)JSON.deserialize(contactJson, Contact.class));

Map<String, String> result = phonebook(contacts);
System.assert(result != null, 'Should have returned empty phonebook instead of null.');
System.assertEquals(0, result.keySet().size(), 'Resulting Map should have no keys');

* Test 4
Map<String, String> result = phonebook(new List<Contact>());
System.assert(result != null, 'Should have returned empty phonebook instead of null.');
System.assertEquals(0, result.keySet().size(), 'Resulting Map should have no keys');
*/
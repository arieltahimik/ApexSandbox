/*
* #101 - List of sObjects
* Implement the method getListOfsObject(), which accepts two parameters, a list of accounts, and a list of contacts, as an input and 
* returns a list of sObjects. If both lists are empty or null, return an empty list of sObject.
* 
* Given the following test code:
* 
* List<Account> accounts = new List<Account>();
* accounts.add(new Account(name ='Salesforce'));
* accounts.add(new Account(name ='Microsoft'));
* List<Contact> contacts= new List<Contact>();
* contacts.add(new Contact(lastName = 'Benioff'));
* contacts.add(new Contact(lastName = 'Taylor'));
* List result = getListOfsObject(accounts,contacts);
* result should be (Account:{Name=Salesforce}, Account:{Name=Microsoft}, Contact:{LastName=Benioff}, Contact:{LastName=Taylor})
* 
* Note: Adding different types into a list of sObjects can be used to perform operations on multiple object types in a single DML operation.
*/


public List<sObject> getListOfsObject(List<Account> accounts, List<Contact> contacts)
{
    // code here
    List<sObject> sObjs = new List<sObject>();

    if (accounts == null && contacts == null) {
            return sObjs;
    }

    if (accounts != null) {
        for (Account acc : accounts) {
            sObjs.add(acc);
        }
    }

    if(contacts != null) {
        for (Contact con : contacts) {
            sObjs.add(con);
        }
    }
    
    return sObjs;
}


/*
* TODO: Create a test class

* Test 1
List<Account> accounts = new List<Account>();
accounts.add(new Account(name ='Acme'));
accounts.add(new Account(name ='Apple'));
accounts.add(new Account(name ='Oracle'));

List<Contact> contacts = new List<Contact>();
contacts.add(new Contact(lastName = 'Doe'));
contacts.add(new Contact(lastName = 'Biden'));
contacts.add(new Contact(lastName = 'Johnson'));

List<sObject> result = getListOfsObject(accounts,contacts);
system.assertEquals(6, result?.size(),'Returned list size is not as expected');
system.assertEquals(Schema.Account.SObjectType, result?.get(0)?.getsObjectType(),'Returned list of sObject is not in required order.');
system.assertEquals(Schema.Contact.SObjectType, result?.get(3)?.getsObjectType(),'Returned list of sObject is not in required order.');

* Test 2
List<Contact> contacts = new List<Contact>();
contacts.add(new Contact(lastName = 'Doe'));
contacts.add(new Contact(lastName = 'Biden'));
contacts.add(new Contact(lastName = 'Johnson'));

List<sObject> result = getListOfsObject(null,contacts);
system.assertEquals(3, result?.size(),'Returned list\'s size is not as expected');
system.assertEquals(Schema.Contact.SObjectType, result?.get(1)?.getsObjectType(),'Returned list of sObject is not in required order.');

* Test 3
List<Account> accounts = new List<Account>();
accounts.add(new Account(name ='Acme'));
accounts.add(new Account(name ='Apple'));

List<sObject> result = getListOfsObject(accounts,null);
system.assertEquals(2, result?.size(),'Returned list\'s size is not as expected');
system.assertEquals(Schema.Account.SObjectType, result?.get(1)?.getsObjectType(),'Returned list of sObject is not in required order.');

* Test 4
List<sObject> result = getListOfsObject(null,null);
system.assertEquals(0, result?.size(),'Returned list\'s size is not as expected');

*/
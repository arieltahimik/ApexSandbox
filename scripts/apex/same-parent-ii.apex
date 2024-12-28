/*
* #64 - Same Parent II
* Implement the method sameParent that takes as input an account acc, a contact con, and an opportunity opp and 
* returns true if both the opportunity and contact have the given account as the parent.
* 
* Given the following test code:
* 
* Account acc = new Account(Id = '0018c00002CQU9EAAX');
* Contact con = new Contact(AccountId = acc.Id);
* Opportunity opp = new Opportunity(AccountId = acc.Id);
* 
* The method call sameParent(acc, con, opp) returns true because both the contact and the opportunity have the same parent account.
*/


public Boolean sameParent(Account acc, Contact con, Opportunity opp) {
    if (acc.Id == null || con.AccountId == null || opp.AccountId == null) {
        return false;
    } else {
        return (acc.Id == con.AccountId && acc.Id == opp.AccountId);
    }
}


/*
* Test 1
Account acc = new Account(Id = '0018c00002CQU9EAAX', Name = 'Acme Enterprises');
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Doe');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX', Name = 'Acme');
Boolean result = sameParent(acc, con, opp);
System.assertEquals(true, result, 'Both opportunity and contact had given parent 0018c00002CQU9EAAX');

* Test 2
Account acc = new Account(Name = 'Acme Enterprises');
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Doe');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX', Name = 'Acme');
Boolean result = sameParent(acc, con, opp);
System.assertEquals(false, result, 'Both opportunity and contact had the same parent, but not the one provided');

* Test 3
Account acc = new Account(Id = '0018c00002CQU8zAAH', Name = 'Acme Enterprises');
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Doe');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX', Name = 'Acme');
Boolean result = sameParent(acc, con, opp);
System.assertEquals(false, result, 'Both opportunity and contact had the same parent, but not the one provided');

* Test 4
Account acc = new Account(Id = '0018c00002CQU8zAAH', Name = 'Acme Enterprises');
Contact con = new Contact(LastName = 'Greene');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU8zAAH', Name = 'ApexSandbox.io Subscription');
Boolean result = sameParent(acc, con, opp);
System.assertEquals(false, result, 'The contact record did not have a parent account');

* Test 5
Account acc = new Account(Id = '0018c00002CQU9EAAX', Name = 'Acme Enterprises');
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Patel');
Opportunity opp = new Opportunity(Name = 'Professional Services');
Boolean result = sameParent(acc, con, opp);
System.assertEquals(false, result, 'The opportunity record did not have a parent account');

* Test 6
Account acc = new Account(Name = 'Acme Enterprises');
Contact con = new Contact(LastName = 'Maujood');
Opportunity opp = new Opportunity(Name = 'Professional Services');
Boolean result = sameParent(acc, con, opp);
System.assertEquals(false, result, 'The contact and opportunity did not have any parent account');
*/
/*
* #63 - Same Parent
* Implement the method sameParent that takes as input an opportunity opp and a contact c, 
* and returns true if both the opportunity and contact have the same parent account.
* 
* Given the following test code:
* Contact con = new Contact(AccountId = '0018c00002CQU9EAAX');
* Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX');
* 
* The method call sameParent(con, opp) returns true because both the contact and the opportunity have the same parent account.
*/


public Boolean sameParent(Contact c, Opportunity opp) {
    if (c.AccountId == null || opp.AccountId == null) {
        return false;
    } else {
        return (c.AccountId == opp.AccountId);
    }
}


/*
* Test 1
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Doe');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX', Name = 'Acme');
Boolean result = sameParent(con, opp);
System.assertEquals(true, result, 'Both opportunity and contact had same parent 0018c00002CQU9EAAX');

* Test 2
Contact con = new Contact(AccountId = '0018c00002CQU8zAAH', LastName = 'Smith');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX', Name = 'Computer Sales');
Boolean result = sameParent(con, opp);
System.assertEquals(false, result, 'Both opportunity and contact had different parent accounts');

* Test 3
Contact con = new Contact(LastName = 'Greene');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX', Name = 'ApexSandbox.io Subscription');
Boolean result = sameParent(con, opp);
System.assertEquals(false, result, 'The contact record did not have a parent account');

* Test 4
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Patel');
Opportunity opp = new Opportunity(Name = 'Professional Services');
Boolean result = sameParent(con, opp);
System.assertEquals(false, result, 'The opportunity record did not have a parent account');

* Test 5
Contact con = new Contact(LastName = 'Maujood');
Opportunity opp = new Opportunity(Name = 'Professional Services');
Boolean result = sameParent(con, opp);
System.assertEquals(false, result, 'The contact and opportunity did not have any parent account');
*/
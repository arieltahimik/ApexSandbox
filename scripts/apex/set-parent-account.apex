/*
* #66 - Set Parent Account
* Implement the method setParent that takes as input an account acc, a contact con, and an opportunity opp and sets the account 
* as the parent for both the opportunity and contact. Make sure to not take any action if the provided account or its Id is null.
* 
* Given the following test code:
* 
* Account acc = new Account(Id = '0018c00002CQU9EAAX');
* Contact con = new Contact(LastName = 'Smith');
* Opportunity opp = new Opportunity(Name = 'Coding Bootcamp');
* setParent(acc, con, opp);
* 
* The expression opp.AccountId == '0018c00002CQU9EAAX' && con.AccountId == '0018c00002CQU9EAAX' returns true 
* because both the contact and the opportunity now have acc as the parent account.
*/


public void setParent(Account acc, Contact con, Opportunity opp) {
    if (acc ==  null || acc.Id == null) {
        con.AccountId = con.AccountId;
        opp.AccountId = opp.AccountId;
    } else {
        con.AccountId = acc.Id;
        opp.AccountId = acc.Id;
    } 
}

/*
* Test 1
Account acc = new Account(Id = '0018c00002CQU9EAAX', Name = 'Acme Enterprises');
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Doe');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU8zAAH', Name = 'Acme');
setParent(acc, con, opp);
System.assertEquals('0018c00002CQU9EAAX', con.AccountId, 'Parent account for contact should be 0018c00002CQU9EAAX');
System.assertEquals('0018c00002CQU9EAAX', opp.AccountId, 'Parent account for opportunity should be 0018c00002CQU9EAAX');

* Test 2
Account acc = new Account(Id = '0018c00002CQU8zAAH', Name = 'Acme Enterprises');
Contact con = new Contact(LastName = 'Doe');
Opportunity opp = new Opportunity(Name = 'Acme');
setParent(acc, con, opp);
System.assertEquals('0018c00002CQU8zAAH', con.AccountId, 'Parent account for contact should be 0018c00002CQU8zAAH');
System.assertEquals('0018c00002CQU8zAAH', opp.AccountId, 'Parent account for opportunity should be 0018c00002CQU8zAAH');

* Test 3
Account acc = new Account(Name = 'Acme Enterprises');
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Doe');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU8zAAH', Name = 'Acme');
setParent(acc, con, opp);
System.assertEquals('0018c00002CQU9EAAX', con.AccountId, 'Parent account for contact should have remained 0018c00002CQU9EAAX');
System.assertEquals('0018c00002CQU8zAAH', opp.AccountId, 'Parent account for opportunity should have remained 0018c00002CQU8zAAH');

* Test 4
Contact con = new Contact(AccountId = '0018c00002CQU9EAAX', LastName = 'Doe');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU8zAAH', Name = 'Acme');
setParent(null, con, opp);
System.assertEquals('0018c00002CQU9EAAX', con.AccountId, 'Parent account for contact should have remained 0018c00002CQU9EAAX');
System.assertEquals('0018c00002CQU8zAAH', opp.AccountId, 'Parent account for opportunity should have remained 0018c00002CQU8zAAH');
*/
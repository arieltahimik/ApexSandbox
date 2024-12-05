/*
* #100 - sObject Type
* Implement the method isTypeAccount(), which accepts a sObject as input and returns a true 
* if type of input is Account object else it should return as false.
* 
* Given the following test code:
* Account acc = new Account(name='Apple')
* Boolean result = isTypeAccount(acc);
* result should be equal to true
*/

public Boolean isTypeAccount(sObject record)
{
    return record instanceof Account;
}


/*
* TODO: Create Test Class
*
* Test 1
Account acc = new Account(name='Acme');
Boolean result = isTypeAccount(acc);
system.assertEquals(true,result,'Type of record does not match with Account');
//System.debug('Is record an instance of Account? ' + (result==true ? 'Yes' : 'No'));


* Test 2
Contact con = new Contact(lastName ='ContactTesting');
Boolean result = isTypeAccount(con);
system.assertEquals(false,result,'Type of record is not Account');


* Test 3
Boolean result = isTypeAccount(null);
system.assertEquals(false,result,'Type of record is not Account');
*/

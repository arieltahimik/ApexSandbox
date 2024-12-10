/*
* #95 - Serialize sObjects
* Implement the method getAccountsInJSONFormat(), a list of accounts and returns a list of accounts in string JSON format.
* 
* Given the following test code:
* 
* List<Account> accounts = new ListList<Account>();
* accounts.add(new Account(Name = 'Acme', BillingCity = 'Chicago'));
* accounts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));
* String result = getAccountsInJSONFormat(accounts);
* result should be equals to
* 
* '[{"attributes":{"type":"Account"},"Name":"Acme","BillingCity":"Chicago"},{"attributes":{"type":"Account"},"Name":"Dove", "BillingCity":"Boston"}]';
*/


public String getAccountsInJSONFormat(List<Account> accounts){
    // code here
    return JSON.serialize(accounts);
}


/*
* TODO: Create Test class

* Test 1
List<Account> accounts = new List<Account>();
accounts.add( new Account(Name = 'Acme'));
accounts.add(new Account(Name = 'Dove', Description = 'Json format problem statement'));

String result = getAccountsInJSONFormat(accounts);

String expected = '[{"attributes":{"type":"Account"},"Name":"Acme"},{"attributes":{"type":"Account"},"Name":"Dove","Description":"Json format problem statement"}]';
System.assertEquals(expected,result, 'JSON is not in expected format');


* Test 2

String result = getAccountsInJSONFormat(null);

System.assertEquals('null',result, 'Returned string should be null');


* Test 3

String result = getAccountsInJSONFormat(new List<Account>());
system.debug('JSON format :' + result);

System.assertEquals('[]',result, 'Returned string does not match');
*/
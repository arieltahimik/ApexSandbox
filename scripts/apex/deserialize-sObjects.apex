/*
* #96 - Deserialize sObjects
* Implement the method getAccountsFromJSONString, which takes a JSON string of a list of accounts as an input and returns a list of accounts. 
* If the input string is empty or null, return null.
* 
* Given the following test code:
* String inputJSON = '[{"attributes":{"type":"Account","url":"/services/data/v55.0/sobjects/Account/00158000002zBhUAAU"},"Id":"00158000002zBhUAAU","Name":"Customer1"},{"attributes":{"type":"Account","url":"/services/data/v55.0/sobjects/Account/00158000002zBhWAAU"},"Id":"00158000002zBhWAAU","Name":"Customer2"}]';
* 
* List<Account> result = getAccountsFromJSONString(inputJSON);
* accounts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));
* result should be list of accounts (Account:{Id=00158000002zBhUAAU, Name=Customer1}, Account:{Id=00158000002zBhWAAU, Name=Customer2})
*/


public List<Account> getAccountsFromJSONString(String inputJSON){
    //return String.isBlank(inputJSON) ? null : (List<Account>)JSON.deserialize (inputJSON,List<Account>.class);
    //-or-
    if (!String.isBlank(inputJSON)) {
        return (List<Account>)JSON.deserialize(inputJSON,List<Account>.class);
    } else {
        return null;
    }
}


/*
Test 1 
String inputJSON = '[{"attributes":{"type":"Account","url":"/services/data/v55.0/sobjects/Account/00158000002zBhUAAU"},"Id":"00158000002zBhUAAU","Name":"Customer1"},{"attributes":{"type":"Account","url":"/services/data/v55.0/sobjects/Account/00158000002zBhWAAU"},"Id":"00158000002zBhWAAU","Name":"Customer2"},{"attributes":{"type":"Account","url":"/services/data/v55.0/sobjects/Account/00158000002zBhXAAU"},"Id":"00158000002zBhXAAU","Name":"Customer3"},{"attributes":{"type":"Account","url":"/services/data/v55.0/sobjects/Account/00158000002zBhUAAU"},"Id":"00158000002zBhUAAU","Name":"Customer4"},{"attributes":{"type":"Account","url":"/services/data/v55.0/sobjects/Account/00158000002zBhUAAU"},"Id":"00158000002zBhUAAU","Name":"Customer5"}]';

List<Account> expected = new List<Account>();
expected.add(new Account(Id = '00158000002zBhUAAU', Name = 'Customer1'));
expected.add(new Account(Id = '00158000002zBhWAAU', Name = 'Customer2'));
expected.add(new Account(Id = '00158000002zBhXAAU', Name = 'Customer3'));
expected.add(new Account(Id = '00158000002zBhUAAU', Name = 'Customer4'));
expected.add(new Account(Id = '00158000002zBhUAAU', Name = 'Customer5'));

List<Account> result = getAccountsFromJSONString(inputJSON);
System.assertEquals(expected, result, 'Return list does not match with expected list.');
Test 2 
String inputJSON = null;
List<Account> result = getAccountsFromJSONString(inputJSON);
System.assertEquals(null, result, 'Return list should be null');
Test 3 
String inputJSON = JSON.serialize(new List<Account>());
List<Account> result = getAccountsFromJSONString(inputJSON);
System.assertEquals(new List<Account>(), result, 'Return list should be empty with size 0 (not null)');
*/
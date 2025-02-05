/*
* #85 - Phone to Account
* Implement the method phoneToAccount that takes as input a list of Accounts, and returns a Map containing the 
* phone number as a key and the Account record as the value. Do not include accounts without a phone number.
* 
* For example, given the following accounts:
* a1
* Name: 'Acme Enterprises'
* Phone: '2143452398'
* 
* a2
* Name: 'Universal Containers'
* Phone: '6923849837'
* 
* The method call phoneToAccount(new List {a1, a2}) should return a map containing the following key/value pairs:
* 
* '2143452398' -> a1
* '6923849837' -> a2
*/

public Map<String, Account> phoneToAccount(List<Account> accounts) {
    Map<String, Account> phoneToAccountMap = new Map<String, Account>();
    for (Account acc : accounts) {
        if (acc.Phone == null) {
            continue;
        } else {
            phoneToAccountMap.put(acc.Phone, acc);
        }
    }
    return phoneToAccountMap;
}

List<Account> accounts = new List<Account> {
    new Account(Name = 'Universal Containers', Phone = '2132342356'),
    new Account(Name = 'Morton Bakers', Phone = '5738434859'),
    new Account(Name = 'Space Racers', AccountNumber = '1234'),
    new Account(Name = 'Terrific Works', Phone = '1234567890')
};
Map<String, Account> result = phoneToAccount(accounts);
Set<String> keys = new Set<String> {'2132342356', '5738434859', '1234567890'};
System.assertEquals(keys, result.keySet(), '3 phone numbers should have been the keys');
System.assertEquals('Morton Bakers', result.get('5738434859').Name, '3210987654 should get the Morton Bakers account.');
System.assertEquals('Terrific Works', result.get('1234567890').Name, '1234567890 should get the Terrific Works account.');

/*
* Test 1
List<Account> accounts = new List<Account> {
    new Account(Name = 'Universal Containers', Phone = '2132342356'),
    new Account(Name = 'Morton Bakers', Phone = '5738434859'),
    new Account(Name = 'Space Racers', Phone = '3210987654', AccountNumber = '1234'),
    new Account(Name = 'Terrific Works', Phone = '1234567890')
};
Map<String, Account> result = phoneToAccount(accounts);
Set<String> keys = new Set<String> {'2132342356', '5738434859', '3210987654', '1234567890'};
System.assertEquals(keys, result.keySet(), '4 phone numbers should have been the keys');
System.assertEquals('1234', result.get('3210987654').AccountNumber, '3210987654 should get the Space Racers account.');
System.assertEquals('Terrific Works', result.get('1234567890').Name, '1234567890 should get the Terrific Works account.');

* Test 2
List<Account> accounts = new List<Account> {
    new Account(Name = 'Universal Containers', Phone = '2132342356'),
    new Account(Name = 'Morton Bakers', Phone = '5738434859'),
    new Account(Name = 'Space Racers', AccountNumber = '1234'),
    new Account(Name = 'Terrific Works', Phone = '1234567890')
};
Map<String, Account> result = phoneToAccount(accounts);
Set<String> keys = new Set<String> {'2132342356', '5738434859', '1234567890'};
System.assertEquals(keys, result.keySet(), '3 phone numbers should have been the keys');
System.assertEquals('Morton Bakers', result.get('5738434859').Name, '3210987654 should get the Morton Bakers account.');
System.assertEquals('Terrific Works', result.get('1234567890').Name, '1234567890 should get the Terrific Works account.');

* Test 3
List<Account> accounts = new List<Account>();
Map<String, Account> result = phoneToAccount(accounts);
System.assert(result != null, 'The resulting map should not be null');
System.assertEquals(0, result.keySet().size(), '0 phone numbers should have been the keys');
*/
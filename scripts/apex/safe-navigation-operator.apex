/*
* #94 - Safe Navigation Operator
* Implement the method getAccountBillingCityWithSafeNavigation, which accepts a list of accounts as an input and returns the BillingCity 
* in upper case of the first account in the list. Use the Safe Navigation (?.) to ensure null is returned in case the BillingCity is null.
* 
* Given the following test code:
* List<Account> acts = new List<Account>();
* acts.add(new Account(Name = 'Acme', BillingCity = 'Chicago'));
* acts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));
* String result = getAccountBillingCityWithSafeNavigation(acts);
* result should be 'CHICAGO'
*/

public String getAccountBillingCityWithSafeNavigation(List<Account> accounts) {
    return accounts[0].BillingCity?.toUpperCase();
}


/*
*TODO: Create a Test Class
* Test 1
List<Account> accounts = new List<Account>();
accounts.add( new Account(Name = 'Acme', BillingCity = 'Mumbai'));
accounts.add(new Account(Name = 'Dove', BillingCity = 'Delhi'));

String result = getAccountBillingCityWithSafeNavigation(accounts);
System.assertEquals('MUMBAI', result, 'Billing City does not match');


* Test 2
List<Account> accounts = new List<Account>();
accounts.add( new Account(Name = 'Acme', BillingCity = 'Delhi'));
accounts.add(new Account(Name = 'Dove', BillingCity = 'Mumbai'));

String result = getAccountBillingCityWithSafeNavigation(accounts );
System.assertEquals('DELHI', result,'Billing City does not match');


* Test 3
List<Account> accounts = new List<Account>();
accounts.add( new Account(Name = 'Acme'));
accounts.add(new Account(Name = 'Dove', BillingCity = 'Delhi'));

String result = getAccountBillingCityWithSafeNavigation(accounts);
System.assertEquals(null, result,'Billing City should be null');
*/
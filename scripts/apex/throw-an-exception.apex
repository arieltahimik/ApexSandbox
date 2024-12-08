/*
* #102 - Throw An Exception
* Implement the method checkAccounts, which accepts a list of accounts as an input and returns a list of accounts. 
* 
* The method should behave as follows:
* If all accounts in the list have BillingCity present, the method should return the original list.
* If the passed list is null the method should throw the built-in IllegalArgumentException with message 'accounts should not be null'
* If any of the accounts in the list do not have a BillingCity present, the method should throw the custom AccountException exception with message 'Invalid BillingCity'. Do not create new exception class - use the AccountException class that has already been created for you.
* 
* Given the following test code:
* List<Account> accounts = new List<Account>();
* accounts.add(new Account(name ='Salesforce', BillingCity ='Boston'));
* accounts.add(new Account(name ='Microsoft'));
* The method callcheckAccounts(accounts); should fail, throwing an AccountException.
*/

public List<Account> checkAccounts(List<Account> accounts)
{
    try {
        if (accounts == null) {
            throw new IllegalArgumentException('accounts should not be null');
        } else {
            for (Account acc: accounts) {
                if (String.isEmpty(acc.BillingCity)) {
                    throw new AccountException ('Invalid BillingCity');                    
                }
            }
            return accounts;
        }
    } catch (IllegalArgumentException e) {
        throw new IllegalArgumentException('accounts should not be null');
    } catch (AccountException e) {
        throw new AccountException ('Invalid BillingCity');
    }
}

//do not remove the following custom-defined exception
public class AccountException extends Exception {}


/*
*TODO: Create a test class

*Test 1
try {
    List<Account> accounts = new List<Account>();
    accounts.add( new Account(Name = 'Acme', BillingCity = 'Chicago'));
    accounts.add( new Account(Name = 'Salesforce'));
    accounts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));
    List<Account> result = checkAccounts(accounts);
    System.assert(false, 'An AccountException should have occurred but the method processed normally.');
} 
catch(AccountException ex) {
    System.assertEquals(true,true,'Exception occurred');
    System.assertEquals('Invalid BillingCity', ex.getMessage(), 'Exception message incorrect');
}
catch (Exception ex) {
    System.assert(false, 'An incorrect exception occurred');
}

*Test 2
try {
    List<Account> result = checkAccounts(null);
    System.assert(false, 'An IllegalArgumentException should have occurred but the method processed normally.');
}
catch(IllegalArgumentException ex)
{
    System.assertEquals(true,true,'Exception occurred');
    System.assertEquals('accounts should not be null', ex.getMessage(), 'Exception message incorrect');
}
catch (Exception ex) {
    System.assert(false, 'An incorrect exception occurred');
}

*Test 3
List<Account> accounts = new List<Account>();
accounts.add( new Account(Name = 'Acme'));
accounts.add( new Account(Name = 'Salesforce'));
accounts.add(new Account(Name = 'Dove'));
try{
    List<Account> result = checkAccounts(accounts);
    system.assertEquals(null, result,' An AccountException should have occurred but the method processed normally.');
}catch(AccountException ex)
{
    system.assertEquals(true,true,'Exception occurred');
}

*Test 4
List<Account> accounts = new List<Account>();
accounts.add( new Account(Name = 'Acme', BillingCity = 'Chicago'));
accounts.add( new Account(Name = 'Salesforce', BillingCity = 'San Francisco'));
accounts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));
List<Account> result = checkAccounts(accounts);
System.assertEquals(accounts, result, 'method returned the same list successfully');
*/
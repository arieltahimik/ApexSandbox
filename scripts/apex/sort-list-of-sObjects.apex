/*
* #98 - Sort List of sObjects
* Implement the method getAccounts(), function, which accepts a list of accounts as input and 
* returns a new list of accounts sorted in descending order based on the Annual Revenue field.
* 
* Given the following test code:
* List<Account> accounts = new List<Account>();
* accounts.add(new Account(Name='Accenture', AnnualRevenue = 30));
* accounts.add(new Account(Name='TCS',AnnualRevenue = 10));
* accounts.add( new Account( Name='Apple', AnnualRevenue = 100) );
* List<Account> result = getAccounts(accounts);
* result = (Account:{Name=Apple, AnnualRevenue=100}, Account:{Name=Accenture, AnnualRevenue=30}, Account:{Name=TCS, AnnualRevenue=10})
*/


public List<Account> getAccounts(List<Account> accounts) {
    if (accounts != null) {
        accounts.sort(new AnnualRevenueComparator());
    }
    return accounts;
}


/*
* NOTE: In descending order that's why left side is 1 (e.g. acc1) and right side is -1 (e.g. acc2)
* If ascending order is needed then left side is -1 and right side is 1
*/
public class AnnualRevenueComparator implements Comparator<Account> {
    public Integer compare(Account acc1, Account acc2) {
        if (acc1 != null && acc2 != null) {
            if (acc1.AnnualRevenue == null && acc2.AnnualRevenue == null) {
                return 0; // Both null, considered equal
            }
            if (acc1.AnnualRevenue == null) {
                return 1; // Null AnnualRevenue is treated as smaller
            }
            if (acc2.AnnualRevenue == null) {
                return -1; // Null AnnualRevenue is treated as smaller
            }
            if (acc1.AnnualRevenue < acc2.AnnualRevenue) {
                return 1; // Sort in descending order
            }
            if (acc1.AnnualRevenue > acc2.AnnualRevenue) {
                return -1; // Sort in descending order
            }
        }
        return 0; // Considered equal if both are null or the same
    }
}



/*
* Test 1
List<Account> expected = new List<Account>();        
expected.add(new Account(Name='Salesforce', AnnualRevenue = 300000));
expected.add(new Account(Name='Oracle',AnnualRevenue = 200000));
expected.add( new Account( Name='SAP', AnnualRevenue = 100000) );

List<Account> inputList = new List<Account>();        
inputList.add(new Account(Name='Oracle',AnnualRevenue = 200000));
inputList.add( new Account( Name='SAP', AnnualRevenue = 100000) );
inputList.add(new Account(Name='Salesforce', AnnualRevenue = 300000));

List<Account> result = getAccounts(inputList);
System.assertEquals(expected, result,'Returned list should sorted in descending order of AnnualRevenue.' );
System.assertEquals(expected.size(), result?.size(),'Returned list size should be same as input list size.' );


* Test 2
List<Account> result = getAccounts(new List<Account>());
System.assertEquals(0, result?.size(),'Returned list size should be same as input list size.' );


* Test 3
List<Account> result = getAccounts(null);
System.assertEquals(null, null,'Returned list should be null.' );
*/
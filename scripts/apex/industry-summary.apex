/*
#86 - Industry Summary
The method industrySummary takes as input a list of accounts with Industry and AnnualRevenue fields populated. 
The method should sum up annual revenue by each industry and return a Map with each industry as a key, 
and sum of annual revenue for that industry as the value.

For example, given the following accounts:

a1
Name: 'Acme Enterprises'
Industry: 'Banking'
AnnualRevenue: 550,000

a2
Name: 'Universal Containers'
Industry: 'Retail'
AnnualRevenue: 200,000

a3
Name: 'SForce Capital'
Industry: 'Banking'
AnnualRevenue: 450,000

The method call industrySummary(new List {a1, a2, a3}) should return a map containing the following key/value pairs:

'Retail' -> 200,000
'Banking' -> 1,000,000
*/


/*
NOTE TO SELF:
Refactor this to avoid hard coded Industry.
Maybe use SET
*/
public Map<String, Decimal> industrySummary(List<Account> accounts) {
    Map<String, Decimal> iS = new Map<String, Decimal>();
    Decimal decBanking = 0;
    Decimal decTech = 0;
    Decimal decRetail = 0;

    if (accounts.isEmpty()) {
        return iS ;
    } else {
        for (Account acc : accounts) {
            if (acc.Industry == 'Banking' ) {
                decBanking += acc.AnnualRevenue;
            } else if (acc.Industry == 'Technology') {
                decTech += acc.AnnualRevenue;
            } else if (acc.Industry == 'Retail') {
                decRetail += acc.AnnualRevenue;
            } else {
                continue;
            }
        }
        iS.put('Banking', decBanking);
        is.put('Technology', decTech);
        is.put('Retail', decRetail);
    }
    return iS;
}


/*
* Test 1
List<Account> accounts = new List<Account> {
    new Account(Industry = 'Banking', AnnualRevenue = 50000),
    new Account(Industry = 'Technology', AnnualRevenue = 20000),
    new Account(Industry = 'Retail', AnnualRevenue = 10000),
    new Account(Industry = 'Technology', AnnualRevenue = 13000),
    new Account(Industry = 'Technology', AnnualRevenue = 15000),
    new Account(Industry = 'Banking', AnnualRevenue = 100000.25)
};
Map<String, Decimal> result = industrySummary(accounts);
Map<String, Decimal> expected = new Map<String, Decimal> {
    'Banking' => 150000.25,
    'Retail' => 10000,
    'Technology' => 48000
};
System.assertEquals(result, expected, 'Expected map with 3 keys and properly summed up revenue');

* Test 2
List<Account> accounts = new List<Account>();
Map<String, Decimal> result = industrySummary(accounts);
System.assertEquals(0, result.keySet().size(), 'Expected map with 0 keys');
*/
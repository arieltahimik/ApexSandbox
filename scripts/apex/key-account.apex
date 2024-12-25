/*
* #60 - Key Account
* For this problem, we define minimum annual revenue thresholds an account must meet to be considered a key account. 
* The annual revenue thresholds are defined by industry:
* 
* Banking: 600,000
* Technology: 800,000
* Retail: 2,000,000
* All others: 500,000
* Implement the method isKeyAccount that takes as input an Account with the AnnualRevenue field and the Industry picklist 
* fields filled out, returns true if the account is a key account, and returns false otherwise.
* 
* Account a1 = new Account();
* a1.AnnualRevenue = 750000;
* a1.Industry = 'Technology';
* The expression isKeyAccount(a1) should return false because the annual revenue does not meet the minimum 
* threshold of 800,000 for the technology industry.
*/


public Boolean isKeyAccount(Account a) {
    //code here
    if (a.Industry == 'Retail') {
        return a.AnnualRevenue >= 2000000 ? true : false;
    }

    if (a.Industry == 'Technology') {
        return a.AnnualRevenue >= 800000 ? true : false;
    }

    if (a.Industry == 'Banking') {
        return a.AnnualRevenue >= 600000 ? true : false;
    }

    if (a.AnnualRevenue >= 500000) {
        return true;
    }

    return false;
}


/*
*Test 1
Account a1 = new Account();
a1.AnnualRevenue = 750000;
a1.Industry = 'Technology';
Boolean result = isKeyAccount(a1);
System.assertEquals(false, result, '750,000 does not meet the threshold for the Technology industry');

*Test 2
Account a1 = new Account();
a1.AnnualRevenue = 799999;
a1.Industry = 'Technology';
Boolean result = isKeyAccount(a1);
System.assertEquals(false, result, '799,999 does not meet the threshold for the Technology industry');

*Test 3
Account a1 = new Account();
a1.AnnualRevenue = 800000;
a1.Industry = 'Technology';
Boolean result = isKeyAccount(a1);
System.assertEquals(true, result, '800,000 meets the threshold for the Technology industry');

*Test 4
Account a1 = new Account();
a1.AnnualRevenue = 1999999;
a1.Industry = 'Retail';
Boolean result = isKeyAccount(a1);
System.assertEquals(false, result, '1,999,999 does not meet the threshold for the Retail industry');

*Test 5
Account a1 = new Account();
a1.AnnualRevenue = 2000000;
a1.Industry = 'Retail';
Boolean result = isKeyAccount(a1);
System.assertEquals(true, result, '2,000,000 meets the threshold for the Retail industry');

*Test 6
Account a1 = new Account();
a1.AnnualRevenue = 499999;
a1.Industry = 'Agriculture';
Boolean result = isKeyAccount(a1);
System.assertEquals(false, result, '499,999 does not meet the threshold for the Agriculture industry');

*Test 7
Account a1 = new Account();
a1.AnnualRevenue = 500000;
a1.Industry = 'Construction';
Boolean result = isKeyAccount(a1);
System.assertEquals(true, result, '500,000 meets the threshold for the Construction industry');
*/
/*
* #57 - Account Rating
* Implement a method setAccountRating that looks at an Account's AnnualRevenue, 
* and sets the value of the Rating picklist field based on the following criteria:
* 
* Accounts with AnnualRevenue less than or equal to 100,000 get a rating of "Cold"
* Accounts with AnnualRevenue less than or equal to 500,000 but greater than 100,000 get a rating of "Warm"
* Accounts with AnnualRevenue greater than 500,000 get a rating of "Hot"
* Given the following test code:
* 
* Account a = new Account(AnnualRevenue = 150000);
* setAccountRating(a);
* The expression a.Rating == 'Warm' should be true because the AnnualRevenue was over 100,000 but less than 500,000
*/


public void setAccountRating(Account a) {
    //code here
    if (a.AnnualRevenue > 500000) {
        a.Rating = 'Hot';
    } else if (a.AnnualRevenue > 100000) {
        a.Rating = 'Warm';
    } else {
        a.Rating = 'Cold';
    }
}


/*
* Test 1
Account a = new Account(AnnualRevenue = 0);
setAccountRating(a);
System.assertEquals('Cold', a.Rating, 'Revenue of 50,000 should result in Cold rating');

* Test 2
Account a = new Account(AnnualRevenue = 50000);
setAccountRating(a);
System.assertEquals('Cold', a.Rating, 'Revenue of 50,000 should result in Cold rating');

* Test 3
Account a = new Account(AnnualRevenue = 100000);
setAccountRating(a);
System.assertEquals('Cold', a.Rating, 'Revenue of 100,000 should result in Cold rating');

* Test 4
Account a = new Account(AnnualRevenue = 100001);
setAccountRating(a);
System.assertEquals('Warm', a.Rating, 'Revenue of 100,001 should result in Warm rating');

* Test 5
Account a = new Account(AnnualRevenue = 200000); 
setAccountRating(a);
System.assertEquals('Warm', a.Rating, 'Revenue of 200,000 should result in Warm rating');

* Test 6
Account a = new Account(AnnualRevenue = 500000); 
setAccountRating(a);
System.assertEquals('Warm', a.Rating, 'Revenue of 500,000 should result in Warm rating');

* Test 7
Account a = new Account(AnnualRevenue = 500001); 
setAccountRating(a);
System.assertEquals('Hot', a.Rating, 'Revenue of 500,001 should result in Hot rating');

* Test 8
Account a = new Account(AnnualRevenue = 600000); 
setAccountRating(a);
System.assertEquals('Hot', a.Rating, 'Revenue of 600,000 should result in Hot rating');
*/
/*
* #59 - Contact Birthday
* Given a Contact with the Birthdate field set to some date, return true if today is the Contact's birthday and return false if not. 
* Assume that a future date will not be set on the Birthdate field.
* 
* Given the following test code:
* 
* Contact c1 = new Contact();
* c1.Birthdate = Date.newInstance(1992, 5, 15)
* The expression isBirthday(c1) should return true if executed on 5/15/2022 or 5/15/2020.
*/


public Boolean isBirthday(Contact c) {
    Date getToday = Date.today();
    Date birthCon = c1.BirthDate;
    String conBday = String.valueOf(birthCon.month()) + String.valueOf(birthCon.day());
    String dateNow = String.valueOf(getToday.month()) + String.valueOf(getToday.day());
    if (conBday == dateNow) {
        return true;
    } else {
        return false;
    }
}


/*
* Test 1
Contact c1 = new Contact();
c1.Birthdate = Date.today();
Boolean result = isBirthday(c1);
System.assertEquals(true, isBirthday(c1), 'c1 was born today and hence has a birthday today');

* Test 2
Contact c1 = new Contact();
c1.Birthdate = Date.today().addYears(-5);
Boolean result = isBirthday(c1);
System.assertEquals(true, isBirthday(c1), 'c1 was born exactly 5 years ago and has a birthday today');

* Test 3
Contact c1 = new Contact();
c1.Birthdate = Date.today().addYears(-5).addMonths(-1);
Boolean result = isBirthday(c1);
System.assertEquals(false, isBirthday(c1), 'c1 was born 5 years and 1 month ago and does not have birthday today');

* Test 4
Contact c1 = new Contact();
c1.Birthdate = Date.today().addYears(-25).addMonths(-1);
Boolean result = isBirthday(c1);
System.assertEquals(false, isBirthday(c1), 'c1 was born 25 years and 1 month ago and does not have birthday today');

* Test 5
Contact c1 = new Contact();
c1.Birthdate = Date.today().addYears(-30).addDays(-1);
Boolean result = isBirthday(c1);
System.assertEquals(false, isBirthday(c1), 'c1 was born 30 years and 1 day ago and does not have birthday today');

* Test 6
Contact c1 = new Contact();
c1.Birthdate = Date.today().addYears(-18).addDays(1);
Boolean result = isBirthday(c1);
System.assertEquals(false, isBirthday(c1), 'c1 has a birthday tomorrow - not today');
*/
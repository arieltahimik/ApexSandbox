/*
* #132 - Insert Course
* Note: This problem requires installation of a packaged data model. Install package in your org and read up on the data model
* The method insertCourse takes as input strings name and details, an integer credits, and returns a record ID. 
* Implement the method to insert a apxio__Course__c record with the Name and apxio__Course_Details__c 
* and apxio__Credits__c fields filled out, and return the Id of the new record.
* 
* Note that apxio__Credits__c is a restricted picklist with valid values 1, 2, 3, and 4. 
* If an invalid value is provided for this picklist, return null.
* 
* You will be working with the following custom object and field names for this problem:
* 
* apxio__Course__c
* apxio__Course__c.apxio__Course_Details__c
* apxio__Course__c.apxio__Credits__c
*/

public Id insertCourse(String name, String details, Integer credits) {
    if (credits < 0 || credits > 4) return null;
/*    
    apxio__Course__c course = new apxio__Course__c();
    course.Name = name;
    course.apxio__Course_Details__c = details;
    course.apxio__Credits__c = String.valueof(credits);
*/
    apxio__Course__c course = new apxio__Course__c(
        Name = name,
        apxio__Course_Details__c = details,
        apxio__Credits__c = String.valueof(credits)
    );
    insert course;
    return course.Id;
}


/**
//Todo: Make a test class for these:

Id result = insertCourse('Apex Programming 101', 'Basics of apex programming.', 3);
List<apxio__Course__c> courses = [SELECT Id, Name, apxio__Course_Details__c, apxio__Credits__c FROM apxio__Course__c];
System.assertEquals(1, courses.size(), 'One course record expected');
System.assertEquals(result, courses[0].Id, 'Incorrect Id returned');
System.assertEquals('Apex Programming 101', courses[0].Name, 'Incorrect Course Name');
System.assertEquals('Basics of apex programming.', courses[0].apxio__Course_Details__c, 'Incorrect Course Details returned');

insert new apxio__Course__c(Name = 'Basics of Writing Interesting Test Cases');
Id result = insertCourse('Understanding Databases', 'Understand how databases work', 3);
List<apxio__Course__c> courses = [SELECT Id, Name, apxio__Course_Details__c, apxio__Credits__c FROM apxio__Course__c WHERE Name = 'Understanding Databases'];
System.assertEquals(1, courses.size(), 'One course record expected');
System.assertEquals(result, courses[0].Id, 'Incorrect Id returned. Did you use SOQL to retrieve the ID?');
System.assertEquals('Understanding Databases', courses[0].Name, 'Incorrect Course Name');
System.assertEquals('Understand how databases work', courses[0].apxio__Course_Details__c, 'Incorrect Course Details returned');

Id result = insertCourse('Apex Programming 102', 'Advanced Apex Programming', 5);
System.assertEquals(null, result, 'Returned ID should have been null');
List<apxio__Course__c> courses = [SELECT Id, Name, apxio__Course_Details__c, apxio__Credits__c FROM apxio__Course__c];
System.assertEquals(0, courses.size(), 'No course records expected in the database');

Id result = insertCourse('Understanding Databases', 'Understand how databases work', 3);
System.assertEquals(0, Limits.getQueries(), 'No SOQL query should be issued in this method');
*/

/*
* #134 - Class from Course
* Note: This problem requires installation of a packaged data model. Install package in your org and read up on the data model
* 
* Implement the method classFromCourse that takes as input a string courseName, creates an apxio__Class__c record associated 
* with the course named courseName, and returns the Id of the new record. The new class should have the same Name as the course.
* 
* You should not create a new apxio__Course__c record. The new class should be linked to the course that already exists in the database. 
* In case no course with the given name is found, do not create any class record and return null.
* 
* You will be working with the following custom object and field names for this problem:
* apxio__Course__c
* apxio__Class__c
* apxio__Class__c.apxio__Course__c
*/


public Id classFromCourse(String courseName) {
    List<apxio__Course__c> course = [
        SELECT Id, Name
        FROM apxio__Course__c 
        WHERE Name = :courseName];

    if (course.size() == 0) return null;
    
    apxio__Class__c cls = new apxio__Class__c();
    cls.Name=course[0].name;
    cls.apxio__Course__c = course[0].Id;
    
    insert cls;
    return cls.Id;
}


/* 
TODO: Create Test Class

* Test 1
apxio__Course__c testCourse = new apxio__Course__c(
    Name = 'Programming 101'
);
insert testCourse;
Id result = classFromCourse('Programming 101');
List<apxio__Class__c> cls = [SELECT Id, Name, apxio__Description__c, apxio__Course__c FROM apxio__Class__c];
System.assertEquals(1, cls.size(), 'Expected 1 class record in the system');
System.assertEquals('Programming 101', cls[0].Name, 'Did not find correct Name on the course');
System.assertEquals(cls[0].Id, result, 'Incorrect Id returned');
System.assertEquals(1, Limits.getQueries() - 1, 'The method should issue only one SOQL query');


*Test 2
Id result = classFromCourse('Programming 101');
List<apxio__Class__c> cls = [SELECT Id, Name, apxio__Description__c, apxio__Course__c FROM apxio__Class__c];
System.assertEquals(0, cls.size(), 'Expected 0 class records in the system');
System.assertEquals(null, result, 'Returned Id should have been null');


*Test 3
List<apxio__Course__c> courses = new List<apxio__Course__c>();
courses.add(new apxio__Course__c(
    Name = 'Programming 101'
));
courses.add(new apxio__Course__c(
    Name = 'Databases 101'
));
courses.add(new apxio__Course__c(
    Name = 'Advanced Web Development'
));
insert courses;
Id result = classFromCourse('Databases 101');
List<apxio__Class__c> cls = [SELECT Id, Name, apxio__Description__c, apxio__Course__c FROM apxio__Class__c];
System.assertEquals(1, cls.size(), 'Expected 1 class records in the system');
System.assertEquals('Databases 101', cls[0].Name, 'Did not find correct Name on the course');
System.assertEquals(cls[0].Id, result, 'Incorrect Id returned');
System.assertEquals(1, Limits.getQueryRows() - 1, 'The SOQL query should have only returned 1 record. Did you miss a WHERE clause?');


*Test 4
List<apxio__Course__c> courses = new List<apxio__Course__c>();
courses.add(new apxio__Course__c(
    Name = 'Programming Basics'
));
courses.add(new apxio__Course__c(
    Name = 'Database Systems'
));
courses.add(new apxio__Course__c(
    Name = 'Advanced Web Development'
));
insert courses;
Id result = classFromCourse('Advanced Programming');
List<apxio__Class__c> cls = [SELECT Id, Name, apxio__Description__c, apxio__Course__c FROM apxio__Class__c];
System.assertEquals(0, cls.size(), 'Expected 0 class records in the system');
System.assertEquals(null, result, 'Returned Id should have been null');
*/
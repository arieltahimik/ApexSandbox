/*
* #131 - Course and Class
* Note: This problem requires installation of a packaged data model. Install package in your org and read up on the data model
* 
* The method createCourseAndClass takes as input string parameters courseName and description, and returns void. 
* Provide an implementation of the method that first inserts a apxio__Course__c record with the provided name 
* and description (if provided) copied into the Name and apxio__Course_Details__c fields, and then inserts a 
* child apxio__Class__c record with the same name and description copied into the Name and apxio__Description__c fields.
* 
* There is, however, a difference between the course details and description fields on the two objects. 
* While the apxio__Course__c.apxio__Course_Details__c has type Rich Text capable of storing thousands of characters, 
* apxio__Class__c.apxio__Description__c can only store a maximum of 255 characters. Make sure to truncate the description 
* to 255 characters before adding it to your apxio__Class__c record. You can assume that the provided description will 
* never be too large for the rich text field.
* 
* You will be working with the following custom object and field names for this problem:
* 
* apxio__Course__c
* apxio__Course__c.apxio__Course_Details__c
* apxio__Class__c
* apxio__Class__c.apxio__Course__c
* apxio__Class__c.apxio__Description__c
*/


public void createCourseAndClass(String name, String description) {
    //String croppedDesc = '';
    apxio__Course__c course = new apxio__Course__c();
    course.Name = name;
    if (!String.isblank(description)) {
        course.apxio__Course_Details__c = description;
        //croppedDesc =  description.left(255);
    }    
    insert course; 

    apxio__Class__c cls = new apxio__Class__c();
    cls.apxio__Course__c = course.Id;
    cls.Name = name;
    //cls.apxio__Description__c = croppedDesc;
    cls.apxio__Description__c = description?.left(255);
    insert cls;

}


/*
* Test 1
createCourseAndClass('Programming 101', 'This class covers the basics of programming');
List<apxio__Course__c> course = [SELECT Id, Name, apxio__Course_Details__c FROM apxio__Course__c];
List<apxio__Class__c> cls = [SELECT Id, Name, apxio__Description__c, apxio__Course__c FROM apxio__Class__c];
System.assertEquals(1, course.size(), 'Expected 1 course record in the system');
System.assertEquals('Programming 101', course[0].Name, 'Did not find correct Name on the course');
System.assertEquals('This class covers the basics of programming', course[0].apxio__Course_Details__c, 'Course did not have correct description');
System.assertEquals(1, cls.size(), 'Expected 1 class record in the system');
System.assertEquals('Programming 101', cls[0].Name, 'Did not find correct Name on the course');
System.assertEquals('This class covers the basics of programming', cls[0].apxio__Description__c, 'Course did not have correct description');


* Test 2
String description = 'In computing, a database is an organized collection of data stored and accessed electronically. Small databases can be stored on a file system, while large databases are hosted on computer clusters or cloud storage. The design of databases spans formal techniques and practical considerations, including data modeling, efficient data representation and storage, query languages, security and privacy of sensitive data, and distributed computing issues, including supporting concurrent access and fault tolerance.';
String description255 = 'In computing, a database is an organized collection of data stored and accessed electronically. Small databases can be stored on a file system, while large databases are hosted on computer clusters or cloud storage. The design of databases spans formal te';
createCourseAndClass('Database Systems', description);
List<apxio__Course__c> course = [SELECT Id, Name, apxio__Course_Details__c FROM apxio__Course__c];
List<apxio__Class__c> cls = [SELECT Id, Name, apxio__Description__c, apxio__Course__c FROM apxio__Class__c];
System.assertEquals(1, course.size(), 'Expected 1 course record in the system');
System.assertEquals('Database Systems', course[0].Name, 'Did not find correct Name on the course');
System.assertEquals(description, course[0].apxio__Course_Details__c, 'Course did not have correct description');
System.assertEquals(1, cls.size(), 'Expected 1 class record in the system');
System.assertEquals('Database Systems', cls[0].Name, 'Did not find correct Name on the course');
System.assertEquals(description255, cls[0].apxio__Description__c, 'Course did not have correct description');


* Test 3
createCourseAndClass('Artificial Intelligence', null);
List<apxio__Course__c> course = [SELECT Id, Name, apxio__Course_Details__c FROM apxio__Course__c];
List<apxio__Class__c> cls = [SELECT Id, Name, apxio__Description__c, apxio__Course__c FROM apxio__Class__c];
System.assertEquals(1, course.size(), 'Expected 1 course record in the system');
System.assertEquals('Artificial Intelligence', course[0].Name, 'Did not find correct Name on the course');
System.assertEquals(null, course[0].apxio__Course_Details__c, 'Course did not have correct description');
System.assertEquals(1, cls.size(), 'Expected 1 class record in the system');
System.assertEquals('Artificial Intelligence', cls[0].Name, 'Did not find correct Name on the course');
System.assertEquals(null, cls[0].apxio__Description__c, 'Course did not have correct description');
*/
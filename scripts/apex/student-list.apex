/*
* #133 - Student List
* Note: This problem requires installation of a packaged data model. Install package in your org and read up on the data model
* 
* The method insertStudents takes as input two lists of strings studentNames and studentEmails. 
* The two lists will always have the same size, with studentNames[i] and studentEmails[i] 
* (for any in-range value of i) representing a student's name and email.
* 
* Write an implementation of the method that creates apxio__Student__c records for each entry in the lists with the Name and apxio__Email__c fields filled out.
* 
* You will be working with the following custom object and field names for this problem:
* 
* apxio__Student__c
* apxio__Student__c.apxio__Email__c
*/


public void insertStudents(List<String> studentNames, List<String> studentEmails) {
    // code here
    List<apxio__Student__c> students = new List<apxio__Student__c>();
    for (Integer i=0; i<studentNames.size(); i++) {
        apxio__Student__c s = new apxio__Student__c (
            Name = studentNames[i],
            apxio__Email__c = studentEmails[i]
        );
        students.add(s);
    }
    insert students;
}


/*
* Test 1

List<String> names = new List<String> { 'Jane Doe' };
List<String> emails = new List<String> { 'jane@apexsandbox.io' };
insertStudents(names, emails);
List<apxio__Student__c> students = [SELECT Id, Name, apxio__Email__c FROM apxio__Student__c];
System.assertEquals(1, students.size(), 'Only one student record expected');
System.assertEquals('Jane Doe', students[0].Name, 'Invalid student name');
System.assertEquals('jane@apexsandbox.io', students[0].apxio__Email__c, 'Invalid student email');


* Test 2
List<String> names = new List<String> { 'Jane Doe', 'John Smith' };
List<String> emails = new List<String> { 'jane@apexsandbox.io', 'john@apexsandbox.io' };
insertStudents(names, emails);
List<apxio__Student__c> students = [SELECT Id, Name, apxio__Email__c FROM apxio__Student__c ORDER BY name ASC];
System.assertEquals(2, students.size(), 'Two student records expected');
System.assertEquals('Jane Doe', students[0].Name, 'Incorrect name for first student record');
System.assertEquals('jane@apexsandbox.io', students[0].apxio__Email__c, 'Incorrect email for first student record');
System.assertEquals('John Smith', students[1].Name, 'Incorrect name for second student record');
System.assertEquals('john@apexsandbox.io', students[1].apxio__Email__c, 'Incorrect email for second student record');


*Test 3
List<String> names = new List<String>();
List<String> emails = new List<String>();
insertStudents(names, emails);
List<apxio__Student__c> students = [SELECT Id, Name, apxio__Email__c FROM apxio__Student__c];
System.assertEquals(0, students.size(), 'Two student records expected');


*Test 4
List<String> names = new List<String>();
List<String> emails = new List<String>();
for (Integer i=0; i<300; i++) {
    names.add('Test Student ' + i);
    emails.add('teststudent' + i + '@apexsandbox.io');
}
insertStudents(names, emails);
List<apxio__Student__c> students = [SELECT Id, Name, apxio__Email__c FROM apxio__Student__c];
System.assertEquals(300, students.size(), 'Incorrect number of student records');

*/
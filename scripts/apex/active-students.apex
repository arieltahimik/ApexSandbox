/*
* #128 - Active Students
* Note: This problem requires installation of a packaged data model. Install package in your org and read up on the data model
* Implement the method selectActiveStudents that returns a list of all apxio__Student__c records with apxio__Active__c field checked. 
* Make sure the students have a value in the Id and Name fields.
* 
* You will be working with the following custom object and field names for this problem:
* apxio__Student__c
* apxio__Student__c.apxio__Active__c
*/

public List<apxio__Student__c> selectActiveStudents() {
    List<apxio__Student__c> students = [
        SELECT Id, Name 
        FROM apxio__Student__c
        WHERE apxio__Active__c = true AND
            Id != null AND 
            Name != null];
    return students;
}

/**
//TODO: Create a test class for this.
// Test 1
List<apxio__Student__c> students = new List<apxio__Student__c>();

students.add(new apxio__Student__c(
    Name = 'Gina Woods',
    apxio__Active__c = true
));

students.add(new apxio__Student__c(
    Name = 'Tung Nguyen',
    apxio__Active__c = true
));

students.add(new apxio__Student__c(
    Name = 'Akash Mahinder',
    apxio__Active__c = false
));

insert students;

students = [SELECT Id, Name FROM apxio__Student__c WHERE apxio__Active__c = true];
List<apxio__Student__c> result = selectActiveStudents();

System.assertEquals(2, result.size(), 'Expected to see 2 student records');
Map<Id, apxio__Student__c> studentMap = new Map<Id, apxio__Student__c>(students);
for (apxio__Student__c student : result) {
    System.assert(student.Name != null, 'Returned student did not have Name populated');
    System.assert(student.Id != null, 'Returned student did not have an Id');
    apxio__Student__c match = studentMap.get(student.Id);
    System.assert(match != null, 'Did not expect student ' + student.Name);
}


// Test 2
List<apxio__Student__c> students = new List<apxio__Student__c>();

students.add(new apxio__Student__c(
    Name = 'Gina Woods',
    apxio__Active__c = false
));

students.add(new apxio__Student__c(
    Name = 'Tung Nguyen',
    apxio__Active__c = false
));

students.add(new apxio__Student__c(
    Name = 'Akash Mahinder',
    apxio__Active__c = false
));

insert students;

students = [SELECT Id, Name FROM apxio__Student__c WHERE apxio__Active__c = true];
List<apxio__Student__c> result = selectActiveStudents();

System.assertEquals(0, result.size(), 'Expected to see 0 student records');

// Test 3
List<apxio__Student__c> students = new List<apxio__Student__c>();

students.add(new apxio__Student__c(
    Name = 'Tom Morello',
    apxio__Active__c = true
));

insert students;

students = [SELECT Id, Name FROM apxio__Student__c WHERE apxio__Active__c = true];
List<apxio__Student__c> result = selectActiveStudents();

System.assertEquals(1, result.size(), 'Expected to see 2 student records');
Map<Id, apxio__Student__c> studentMap = new Map<Id, apxio__Student__c>(students);
for (apxio__Student__c student : result) {
    System.assert(student.Name != null, 'Returned student did not have Name populated');
    System.assert(student.Id != null, 'Returned student did not have an Id');
    apxio__Student__c match = studentMap.get(student.Id);
    System.assert(match != null, 'Did not expect student ' + student.Name);
}


// Test 4
List<apxio__Student__c> result = selectActiveStudents();
System.assertEquals(0, result.size(), 'Expected to see 0 student records');
*/
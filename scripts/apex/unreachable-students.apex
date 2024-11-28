/*
* #130 - Unreachable Students
* Note: This problem requires installation of a packaged data model. Install package in your org and read up on the data model
* Implement the method selectUnreachableStudents that queries for and returns a list of all active apxio__Student__c records that 
* are unreachable because they are missing both an email and a phone number. Make sure to include the Id and Name fields in the result. 
* The returned list should be sorted A-Z on Name.
* 
* For example, given the following list of students in the database:
* Student Name    Phone           Email                   Active
* Brian Crumley   (791)232-997    brian@apexsandbox.io    true
* Paulina Smith                                           true
* Azeem Khan                         ak@apexsandbox.io    true
* 
* The method should return a list with a single record for Paulina Smith
* 
* You will be working with the following custom object and field names for this problem:
* apxio__Student__c
* apxio__Student__c.apxio__Active__c
* apxio__Student__c.apxio__Email__c
* apxio__Student__c.apxio__Phone__c
* apxio__Student__c.apxio__Registration_Number__c
*/


public List<apxio__Student__c> selectUnreachableStudents() {
    List<apxio__Student__c> students = [
        SELECT Id, Name 
        FROM apxio__Student__c 
        WHERE apxio__Active__c = true AND 
            apxio__Phone__c = null AND
            apxio__Email__c = null
        ORDER BY Name];
    
    return students;
}


/**
* TODO: Create a Test class for these:
 
//* Test 1
public apxio__Student__c createStudentRecord(String name, String phone, String email, Boolean active) {
    return new apxio__Student__c(
        Name = name,
        apxio__Phone__c = phone,
        apxio__Email__c = email,
        apxio__Active__c = active
    );
}

List<apxio__Student__c> students = new List<apxio__Student__c>();
students.add(createStudentRecord('Mabel Finley', null, null, true));
students.add(createStudentRecord('Aaron Filch', '2124323493', null, true));
students.add(createStudentRecord('Aaron Dent', '2164123494', 'aaron@imaginarymail.com', true));
students.add(createStudentRecord('Amelia Juarez', null, null, true));
students.add(createStudentRecord('Igor Ivanovich', null, null, false));
students.add(createStudentRecord('Maheen Bhatt', '9279238722', 'maheen@imaginarymail.com', false));
students.add(createStudentRecord('Aakash Mishra', null, 'aakaash@apexsandbox.io', true));
students.add(createStudentRecord('Gregory Bolt', null, null, true));
insert students;

List<apxio__Student__c> expected = new List<apxio__Student__c> {
    students[3],
    students[7],
    students[0]
};
List<apxio__Student__c> result = selectUnreachableStudents();
System.assertEquals(expected.size(), result.size(), 'Incorrect number of records returned');
for (Integer i=0; i<expected.size(); i++) {
    System.assertEquals(expected[i].Name, result[i].Name, 'Expected ' + expected[i].Name + ' at index ' + i);
    System.assertEquals(expected[i].Id, result[i].Id, 'Expected the record at index ' + i + ' to have the correct record ID');
}


//* Test 2
List<apxio__Student__c> result = selectUnreachableStudents();
System.assertEquals(0, result.size(), 'Zero records expected');
System.assertEquals(1, Limits.getQueries(), 'One SOQL query should have been issued');


//* Test 3
public apxio__Student__c createStudentRecord(String name, String phone, String email, Boolean active) {
    return new apxio__Student__c(
        Name = name,
        apxio__Phone__c = phone,
        apxio__Email__c = email,
        apxio__Active__c = active
    );
}

List<apxio__Student__c> students = new List<apxio__Student__c>();
students.add(createStudentRecord('Mohsin Zaidi', '2164123494', 'mohsin@imaginarymail.com', true));
students.add(createStudentRecord('Viktor', null, null, false));
insert students;
List<apxio__Student__c> result = selectUnreachableStudents();
System.assertEquals(0, result.size(), 'Zero records expected');
System.assertEquals(0, Limits.getQueryRows(), 'Only records meeting the criteria should have been queried');


//* Test 4
apxio__Student__c student = new apxio__Student__c(
    Name = 'Robin King',
    apxio__Active__c = true
);
insert student;

List<apxio__Student__c> result = selectUnreachableStudents();
System.assertEquals(1, result.size(), 'Incorrect number of records returned');


//* Test 5
public apxio__Student__c createStudentRecord(String name, String phone, String email, Boolean active) {
    return new apxio__Student__c(
        Name = name,
        apxio__Phone__c = phone,
        apxio__Email__c = email,
        apxio__Active__c = active
    );
}

List<apxio__Student__c> students = new List<apxio__Student__c>();
students.add(createStudentRecord('Mabel Finley', null, 'mabel@apexsandbox.io', true));
students.add(createStudentRecord('Aaron Filch', '2124323493', null, true));
students.add(createStudentRecord('Aaron Dent', '2164123494', 'aaron@imaginarymail.com', true));
students.add(createStudentRecord('Amelia Juarez', null, null, true));
students.add(createStudentRecord('Igor Ivanovich', null, null, false));
students.add(createStudentRecord('Maheen Bhatt', '9279238722', 'maheen@imaginarymail.com', false));
students.add(createStudentRecord('Aakash Mishra', null, 'aakaash@apexsandbox.io', true));
students.add(createStudentRecord('Gregory Bolt', null, 'greg@gregbolt.fakedomain.invalid', true));
insert students;

List<apxio__Student__c> result = selectUnreachableStudents();
System.assertEquals(Limits.getQueryRows(), result.size(), 'Only records meeting the criteria should have been queried');
*/
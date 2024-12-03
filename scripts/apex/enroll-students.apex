/*
* #135 - Enroll Students
* Note: This problem requires installation of a packaged data model. Install package in your org and read up on the data model
* 
* Implement the method enrollStudents that takes as input a list of strings emails and a string className. 
* The method should enroll all students with the provided emails into a class with the given name by creating 
* apxio__Class_Enrollment__c records.
* 
* Note that apxio__Student__c and apxio__Class__c records already exist in the database.
* 
* You will be working with the following custom object and field names for this problem:
* apxio__Student__c
* apxio__Student__c.apxio__Email__c
* apxio__Class__c
* apxio__Class_Enrollment__c
* apxio__Class_Enrollment__c.apxio__Student__c
* apxio__Class_Enrollment__c.apxio__Offered_Class__c
*/


public void enrollStudents(List<String> emails, String className) {
    // Get list of students by emails
    List<apxio__Student__c> students = [
        SELECT Id, Name, apxio__Email__c
        FROM apxio__Student__c 
        WHERE apxio__Email__c IN :emails 
    ];

    // Get class by className
    apxio__Class__c cName = [
        SELECT Id, Name 
        FROM apxio__Class__c 
        WHERE Name = :className
    ];    

    // Process if there are students and class exist
    if (students.size() != 0) {
        System.debug('START OF ENROLLMENT PROCESS.');

        // Enrollment
        List<apxio__Class_Enrollment__c> enrollments = new List<apxio__Class_Enrollment__c>();
        for (apxio__Student__c s : students) {
            apxio__Class_Enrollment__c e = new apxio__Class_Enrollment__c();
            e.apxio__Student__c = s.Name;
            e.apxio__Offered_Class__c = cName.Id;
            enrollments.add(e);
        }
        insert enrollments;

        System.debug('END OF ENROLLMENT PROCESS.');
    }

    // Do nothing if no students to process, simply exit the method
    System.debug('END METHOD.');
}


/*
* TODO: Create Test Class

* Test 1
apxio__Course__c testCourse = new apxio__Course__c(
    Name = 'Programming 101'
);
insert testCourse;
apxio__Class__c cls = new apxio__Class__c(
    Name = 'Programming 101',
    apxio__Course__c = testCourse.Id
);
insert cls;

List<String> emails = new List<String> { 'jake@apexsandbox.io', 'jeannie@apexsandbox.com', 'michelle@apexsandbox.io' };
List<apxio__Student__c> students = new List<apxio__Student__c>();
for (String e : emails) {
    apxio__Student__c s = new apxio__Student__c(
        apxio__Email__c = e
    );
    students.add(s);
}
insert students;

enrollStudents(emails, 'Programming 101');

List<apxio__Class_Enrollment__c> enrollments = [SELECT Id, apxio__Student__c, apxio__Student__r.apxio__Email__c, apxio__Offered_Class__c FROM apxio__Class_Enrollment__c];
Assert.areEqual(3, enrollments.size(), 'Expected an enrollment record for each student');
Map<Id, Id> enrollmentToStudent = new Map<Id, Id>();
for (apxio__Class_Enrollment__c en : enrollments) {
    Assert.areEqual(cls.Id, en.apxio__Offered_Class__c, 'Enrollment not linked to correct Class record.');
    enrollmentToStudent.put(en.apxio__Student__c, en.Id);
}

for (apxio__Student__c s : students) {
    Assert.isTrue(enrollmentToStudent.containsKey(s.Id), 'Did not find enrollment record for student ' + s.apxio__Email__c);
}


* Test 2
List<apxio__Course__c> courses = new List<apxio__Course__c>();
courses.add(
    new apxio__Course__c(
        Name = 'Advanced Databases'
    )
);
courses.add(
    new apxio__Course__c(
        Name = 'Databases 101'
    )
);
courses.add(
    new apxio__Course__c(
        Name = 'Salesforce Development'
    )
);
insert courses;

List<apxio__Class__c> classes = new List<apxio__Class__c>();
for (apxio__Course__c crs : courses) {
    classes.add(
        new apxio__Class__c(
            Name = crs.Name,
            apxio__Course__c = crs.Id
        )
    );
}
insert classes;

apxio__Class__c cls = classes[1];

List<String> allemails = new List<String>();
for (Integer i=0; i<200; i++) {
    allemails.add('student' + i + '@apexsandbox.io');
}

List<apxio__Student__c> allstudents = new List<apxio__Student__c>();
for (String e : allemails) {
    apxio__Student__c s = new apxio__Student__c(
        apxio__Email__c = e
    );
    allstudents.add(s);
}
insert allstudents;

List<String> emails = new List<String>();
List<apxio__Student__c> students = new List<apxio__Student__c>();

for (Integer i=0; i<180; i++) {
    emails.add(allemails[i]);
    students.add(allstudents[i]);
}

enrollStudents(emails, cls.Name);

List<apxio__Class_Enrollment__c> enrollments = [SELECT Id, apxio__Student__c, apxio__Student__r.apxio__Email__c, apxio__Offered_Class__c FROM apxio__Class_Enrollment__c];
Assert.areEqual(180, enrollments.size(), 'Expected an enrollment record for each of the 180 student');
Map<Id, Id> enrollmentToStudent = new Map<Id, Id>();
for (apxio__Class_Enrollment__c en : enrollments) {
    Assert.areEqual(cls.Id, en.apxio__Offered_Class__c, 'Enrollment not linked to correct Class record.');
    enrollmentToStudent.put(en.apxio__Student__c, en.Id);
}

for (apxio__Student__c s : students) {
    Assert.isTrue(enrollmentToStudent.containsKey(s.Id), 'Did not find enrollment record for student ' + s.apxio__Email__c);
}


* Test 3
apxio__Course__c testCourse = new apxio__Course__c(
    Name = 'Programming 101'
);
insert testCourse;
apxio__Class__c cls = new apxio__Class__c(
    Name = 'Programming 101',
    apxio__Course__c = testCourse.Id
);
insert cls;

List<String> emails = new List<String> { 'imaginaryemail@apexsandbox.io', 'randomemail@apexsandbox.io' };
List<apxio__Student__c> students = new List<apxio__Student__c>();
for (String e : emails) {
    apxio__Student__c s = new apxio__Student__c(
        apxio__Email__c = e
    );
    students.add(s);
}
insert students;

enrollStudents(new List<String>(), 'Programming 101');

List<apxio__Class_Enrollment__c> enrollments = [SELECT Id, apxio__Student__c, apxio__Student__r.apxio__Email__c, apxio__Offered_Class__c FROM apxio__Class_Enrollment__c];
Assert.areEqual(0, enrollments.size(), 'Expected no enrollment records when no students');
*/
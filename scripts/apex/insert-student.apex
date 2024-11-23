/*
#126 - Insert Student

Note: This problem requires installation of a packaged data model. 
Org URL: /packaging/installPackage.apexp?p0=04t5f000000Gx6CAAS

Install package in your org and read up on the data model:
https://gist.github.com/maujood/9bca1e95a9fe39b1cb881a116873d83e


The method insertStudent takes as input strings name and email, and returns a record ID. Implement the method to insert an apxio__Student__c record with the Name and apxio__Email__c fields filled out, and return the Id of the new record.


You will be working with the following custom object and field names for this problem:

apxio__Student__c
apxio__Student__c.apxio__Email__c
*/

public Id insertStudent(String name, String email) {
    /*
    apxio__Student__c s = new apxio__Student__c();
    s.Name = name;
    s.apxio__Email__c = email;
    */
    apxio__Student__c s = new apxio__Student__c(Name=name, apxio__Email__c=email);
    insert s;
    return s.Id;
}


/*
* // TODO: Make a test class for this:
* Id result = insertStudent('Mehdi Maujood', 'maujood@apexsandbox.io');
* List<apxio__Student__c> students = [SELECT Id, Name, apxio__Email__c FROM apxio__Student__c];
* System.assertEquals(1, students.size(), 'One student record expected');
* System.assertEquals(result, students[0].Id, 'Incorrect Id returned');
* System.assertEquals('Mehdi Maujood', students[0].Name, 'Incorrect Student Name');
* System.assertEquals('maujood@apexsandbox.io', students[0].apxio__Email__c, 'Incorrect Student Email');
* 
* Id result = insertStudent('Jane Doe', 'jane@apexsandbox.io');
* List<apxio__Student__c> students = [SELECT Id, Name, apxio__Email__c FROM apxio__Student__c];
* System.assertEquals(1, students.size(), 'One student record expected');
* System.assertEquals(result, students[0].Id, 'Incorrect Id returned');
* System.assertEquals('Jane Doe', students[0].Name, 'Incorrect Student Name');
* System.assertEquals('jane@apexsandbox.io', students[0].apxio__Email__c, 'Incorrect Student Email');
*/
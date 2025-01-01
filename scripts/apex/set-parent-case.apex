/*
#67 - Set Parent Case
Implement the method linkParent that takes as input two cases c1 and c2, and sets the case created 
first as the parent of the case created later only if both cases look up to the same Contact. 
Ensure to handle the special case where the cases do not have any related contacts.

Given the following two cases:

c1
Id: '5008c00001GHfeUAAT'
CreatedDate: 2022-01-17 05:15pm GMT
ContactId: '0035f00000A4REqAAN'
Subject: 'Not able to log in'


c2
Id: '5008c00001GHfeoAAD'
CreatedDate: 2022-01-19 2:34pm GMT
ContactId: '0035f00000A4REqAAN'
Subject: 'User not created in system of record'

and given the following test code:


linkParent(c1, c2);

The case c1 should be set as the parent of case c2 since they are both related to the same Contact and c2 was created after c1.
*/


public void linkParent(Case c1, Case c2) {
    if (c1.ContactId != null && c1.ContactId != null) {
        if (c1.CreatedDate < c2.CreatedDate) {
            c2.ParentId = c1.Id;
        }
    }    
}


/*
* Test 1 
* //Create Case from JSON to write to non-writeable fields
String caseJson = '{' +
    '"Id": "5008c00001GHfeUAAT",' +
    '"ContactId": "0035f00000A4REqAAN",' +
    '"Subject": "Not able to log in",' +
    '"CreatedDate": "2021-05-23T18:25:43.511Z"' +
    '}';
Case c1 = (Case)JSON.deserialize(caseJson, Case.class);
caseJson = '{' +
    '"Id": "5008c00001GHfeoAAD",' +
    '"ContactId": "0035f00000A4REqAAN",' +
    '"Subject": "User not created in system of record",' +
    '"CreatedDate": "2021-05-25T16:07:42.287Z"' +
    '}';
Case c2 = (Case)JSON.deserialize(caseJson, Case.class);
linkParent(c1, c2);
System.assertEquals('5008c00001GHfeUAAT', c2.ParentId, '5008c00001GHfeUAAT should have been set as the ParentId for c2');
System.assertEquals(null, c1.ParentId, 'c1 should not have any parent case.');


* Test 2 
* //Create Case from JSON to write to non-writeable fields
String caseJson = '{' +
    '"Id": "5008c00001GHfeSAAT",' +
    '"ContactId": "0035f00000A4REqAAN",' +
    '"Subject": "Not able to log in",' +
    '"CreatedDate": "2021-05-23T18:25:43.511Z"' +
    '}';
Case c1 = (Case)JSON.deserialize(caseJson, Case.class);
caseJson = '{' +
    '"Id": "5008c00001GHfeoAAD",' +
    '"ContactId": "0038c00002ef6FgAAI",' +
    '"Subject": "User not created in system of record",' +
    '"CreatedDate": "2021-05-23T18:25:43.511Z"' +
    '}';
Case c2 = (Case)JSON.deserialize(caseJson, Case.class);
linkParent(c1, c2);
System.assertEquals(null, c2.ParentId, 'c2 should not have any parent case because contact records were different.');
System.assertEquals(null, c1.ParentId, 'c1 should not have any parent case because contact records were different.');


* Test 3 
* //Create Case from JSON to write to non-writeable fields
String caseJson = '{' +
    '"Id": "5008c00001GHfeUAAT",' +
    '"ContactId": "0035f00000A4REqAAN",' +
    '"Subject": "Not able to log in",' +
    '"CreatedDate": "2021-05-23T18:25:43.511Z"' +
    '}';
Case c1 = (Case)JSON.deserialize(caseJson, Case.class);
caseJson = '{' +
    '"Id": "5008c00001GHfeoAAD",' +
    '"ContactId": "0035f00000A4REqAAN",' +
    '"Subject": "User not created in system of record",' +
    '"CreatedDate": "2021-05-23T18:25:43.511Z"' +
    '}';
Case c2 = (Case)JSON.deserialize(caseJson, Case.class);
linkParent(c1, c2);
System.assertEquals(null, c2.ParentId, 'c2 should not have any parent case because the cases were created at the same time');
System.assertEquals(null, c1.ParentId, 'c1 should not have any parent case because the cases were created at the same time');


* Test 4 
* //Create Case from JSON to write to non-writeable fields
String caseJson = '{' +
    '"Id": "5008c00001GHfeUAAT",' +
    '"Subject": "Not able to log in",' +
    '"CreatedDate": "2021-05-23T18:25:43.511Z"' +
    '}';
Case c1 = (Case)JSON.deserialize(caseJson, Case.class);
caseJson = '{' +
    '"Id": "5008c00001GHfeoAAD",' +
    '"Subject": "User not created in system of record",' +
    '"CreatedDate": "2021-05-25T16:07:42.287Z"' +
    '}';
Case c2 = (Case)JSON.deserialize(caseJson, Case.class);
linkParent(c1, c2);
System.assertEquals(null, c2.ParentId, 'c2 should not have any parent case because the cases are not related to any contact');
System.assertEquals(null, c1.ParentId, 'c1 should not have any parent case because the cases are not related to any contact');
*/
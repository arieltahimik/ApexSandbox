/*
* #87 - Cases by Type
* The method casesByType takes as input a list of cases and returns a Map> with case types (Type field on Case) as the keys, 
* and a list of cases of that type as values. This map should not include cases with no Type specified.
* 
* For example, given the following cases:
* 
* c1
* Subject: 'Power does not come on'
* Type: 'Electrical'
* 
* c2
* Subject: 'Several switches not responding'
* Type: 'Electrical'
* 
* c3
* Subject: 'Lever jammed - cannot run machine'
* Type: 'Structural'
* 
* The method call casesByType(new List {c1, c2, c3}) should return a map containing the following key/value pairs:
* 
* 'Electrical' -> { c1, c2 }
* 'Structural' -> { c3 }
*/

public Map<String, List<Case>> casesByType(List<Case> cases) {
    // Map to hold Type and Cases
    Map<String, List<Case>> casesByTypeMap = new Map<String, List<Case>>();

    // Loop through the cases
    for (Case c : cases)  {

        // Check Type if not blank or empty or null
        if (String.isNotBlank(c.Type)) {

            // If the Type exist then add the case
            if (casesByTypeMap.containsKey(c.Type)) {
                casesByTypeMap.get(c.Type).add(c);
            } else {
                // If Type not exist, create new list with current case
                casesByTypeMap.put(c.Type, new List<Case>{c});
            }
        }
    }
    return casesByTypeMap;
}


/*
* Test 1
Case ec1 = new Case(Type = 'Electrical', Subject = 'ElectricalCase1');
Case ec2 = new Case(Type = 'Electrical', Subject = 'ElectricalCase2');
Case ec3 = new Case(Type = 'Electrical', Subject = 'ElectricalCase3');
Case m1 = new Case(Type = 'Mechanical', Subject = 'MechanicalCase1');
Case en1 = new Case(Type = 'Electronic', Subject = 'ElectronicCase1');
Case m2 = new Case(Type = 'Mechanical', Subject = 'MechanicalCase2');
Case ec4 = new Case(Type = 'Electrical', Subject = 'ElectricalCase4');
List<Case> cases = new List<Case> { ec1, ec2, ec3, m1, en1, m2, ec4 };
Map<String, List<Case>> result = casesByType(cases);

System.assertEquals(3, result.keySet().size(), 'Resulting map should have 3 keys');

Set<Case> expectedSet = new Set<Case> {ec1, ec2, ec3, ec4};
Set<Case> resultSet = new Set<Case>(result.get('Electrical'));
System.assertEquals(expectedSet, resultSet, 'Electrical cases should be under key Electrical');
System.assertEquals(4, result.get('Electrical').size(), 'Should have 4 electrical cases under key Electrical');

expectedSet = new Set<Case> { m1, m2 };
resultSet = new Set<Case>(result.get('Mechanical'));
System.assertEquals(expectedSet, resultSet, 'Mechanical cases should be under key Mechanical');
System.assertEquals(2, result.get('Mechanical').size(), 'Should have 2 Mechanical cases under key Mechanical');

expectedSet = new Set<Case> { en1 };
resultSet = new Set<Case>(result.get('Electronic'));
System.assertEquals(expectedSet, resultSet, 'Electronic cases should be under key Electronic');
System.assertEquals(1, result.get('Electronic').size(), 'Should have 2 Electronic cases under key Electronic');

* Test 2
Case ec1 = new Case(Type = 'Electrical', Subject = 'ElectricalCase1');
Case m1 = new Case(Type = 'Mechanical', Subject = 'MechanicalCase1');
Case en1 = new Case(Subject = 'ElectronicCase1');
Case m2 = new Case(Type = 'Mechanical', Subject = 'MechanicalCase2');
Case ec4 = new Case(Subject = 'ElectricalCase4');
List<Case> cases = new List<Case> { ec1, m1, en1, m2, ec4 };
Map<String, List<Case>> result = casesByType(cases);

System.assertEquals(2, result.keySet().size(), 'Resulting map should have 2 keys');

Set<Case> expectedSet = new Set<Case> {ec1};
Set<Case> resultSet = new Set<Case>(result.get('Electrical'));
System.assertEquals(expectedSet, resultSet, 'Electrical cases should be under key Electrical');
System.assertEquals(1, result.get('Electrical').size(), 'Should have 1 electrical cases under key Electrical');

expectedSet = new Set<Case> { m1, m2 };
resultSet = new Set<Case>(result.get('Mechanical'));
System.assertEquals(expectedSet, resultSet, 'Mechanical cases should be under key Mechanical');
System.assertEquals(2, result.get('Mechanical').size(), 'Should have 2 Mechanical cases under key Mechanical');

* Test 3
List<Case> cases = new List<Case>();
Map<String, List<Case>> result = casesByType(cases);
System.assertEquals(0, result.keySet().size(), 'Resulting map should not have any keys');
*/
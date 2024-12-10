/*
* #103 - Dynamic Field Values
* Implement the method getFieldsValue, which accepts the following inputs:
* 
* An account acc
* A list of strings fields, with each string in the list representing a valid field on the account object.
* The method should return a list of values from the account record for fields listed in the list fields in the correct order.
* 
* Given the following test code:
* Account acc = new Account(
*     Name = 'Salesforce', 
*     BillingCity = 'Boston', 
*     AnnualRevenue=10000, Rating='Hot');
* List fields = new List{'Industry','Name','Rating'};
* List result = getFieldsValue(acc, fields);
* result should be [null, 'Salesforce', 'Hot']
*/

public List<String> getFieldsValue(Account acc, List<String> fields)
{
    // code here
    List<String> result = new List<String>();
    for (Integer i=0; i<fields.size(); i++) {
        String fieldValue = String.valueOf(acc.get(fields[i]));
        result.add(fieldValue);
    }
    return result;
}


/*
*Test 1
Account acc = new Account(Name = 'Salesforce', BillingCity = 'Boston', AnnualRevenue=10000, Rating='Hot');
List<String> fields = new List<String>{'Industry','Name','Rating'};
List<String> result = getFieldsValue(acc, fields);
List<String> expected = new List<String>{null, 'Salesforce', 'Hot'};
system.assertEquals(expected,result, 'Return list is not as expected');


*Test 2
Account acc = new Account(Name = 'Salesforce', BillingCity = 'Boston', AnnualRevenue=10000, Rating='Hot');
List<String> fields = new List<String>();
List<String> result = getFieldsValue(acc, fields);
List<String> expected = new List<String>();
system.assertEquals(expected,result, 'Return list is not as expected');


*Test 3
Account acc = new Account(Name = 'Acme', Industry ='Biotechnology',BillingCity = 'Chicago', AnnualRevenue=34000, Rating='Cold');
List<String> fields = new List<String>{'BillingCity','AnnualRevenue','Name'};
List<String> result = getFieldsValue(acc, fields);
List<String> expected = new List<String>{'Chicago', '34000', 'Acme'};
system.assertEquals(expected,result, 'Return list is not as expected');


*Test 4
Account acc = new Account(Name = 'Acme', Industry ='Chemicals' ,BillingCity = 'Chicago', AnnualRevenue=54000, Rating='Warm');
List<String> fields = new List<String>{'BillingCity','Name','AnnualRevenue','Rating','Industry'};
List<String> result = getFieldsValue(acc, fields);
List<String> expected = new List<String>{'Chicago','Acme', '54000', 'Warm','Chemicals'};
system.assertEquals(expected,result, 'Return list is not as expected');
*/
/*
* #83 - Employee Email
* Given a string employeeId a map of string to string employeeIdToEmail that contains employee IDs as keys 
* and the employee's email address as the value, return the email associated with the passed employeeId. 
* If the employee ID is not found, return 'info@apexsandbox.io'.
* 
* For example, if the map employeeIdToEmail contains the following keys and values:
* 
* '6752' -> 'cooper@corporation.com'
* '19228' -> 'umair@universalcontainers.com'
* '4823' -> 'alicia@acmeenterprises.com'
* The method call employeeEmail(employeeIdToEmail, '4823') should return 'alicia@acmeenterprises.com'.
*/


public String employeeEmail(Map<String, String> employeeIdToEmail, String employeeId) {
    if (employeeIdToEmail.containsKey(employeeId)) {
        return employeeIdToEmail.get(employeeId);
    }
    return 'info@apexsandbox.io';
}

Map<String, String> employeeIdToEmail = new Map<String, String>();
employeeIdToEmail.put('6752', 'cooper@corporation.com');
employeeIdToEmail.put('19228', 'umair@universalcontainers.com');
employeeIdToEmail.put('4823', 'alicia@acmeenterprises.com');
employeeIdToEmail.put('4825', 'gina@acmeenterprises.com');
employeeIdToEmail.put('74834', 'mehdi@apexsandbox.io');
employeeIdToEmail.put('91834', 'kevin@karachibakery.net');

String result = employeeEmail(employeeIdToEmail, '4825');
System.assertEquals('gina@acmeenterprises.com', result, 'Should have received Gina\'s email back');

result = employeeEmail(employeeIdToEmail, '91834');
System.assertEquals('kevin@karachibakery.net', result, 'Should have received Kevin\'s email back');

result = employeeEmail(employeeIdToEmail, '74834');
System.assertEquals('mehdi@apexsandbox.io', result, 'Should have received Mehdi\'s email back');

/*
* Test 1
Map<String, String> employeeIdToEmail = new Map<String, String>();
employeeIdToEmail.put('6752', 'cooper@corporation.com');
employeeIdToEmail.put('19228', 'umair@universalcontainers.com');
employeeIdToEmail.put('4823', 'alicia@acmeenterprises.com');
employeeIdToEmail.put('4825', 'gina@acmeenterprises.com');
employeeIdToEmail.put('74834', 'mehdi@apexsandbox.io');
employeeIdToEmail.put('91834', 'kevin@karachibakery.net');

String result = employeeEmail(employeeIdToEmail, '4825');
System.assertEquals('gina@acmeenterprises.com', result, 'Should have received Gina\'s email back');

result = employeeEmail(employeeIdToEmail, '91834');
System.assertEquals('kevin@karachibakery.net', result, 'Should have received Kevin\'s email back');

result = employeeEmail(employeeIdToEmail, '74834');
System.assertEquals('mehdi@apexsandbox.io', result, 'Should have received Mehdi\'s email back');

* Test 2
Map<String, String> employeeIdToEmail = new Map<String, String>();
employeeIdToEmail.put('6752', 'cooper@corporation.com');
employeeIdToEmail.put('19228', 'umair@universalcontainers.com');
employeeIdToEmail.put('4823', 'alicia@acmeenterprises.com');
employeeIdToEmail.put('4825', 'gina@acmeenterprises.com');
employeeIdToEmail.put('74834', 'mehdi@apexsandbox.io');
employeeIdToEmail.put('91834', 'kevin@karachibakery.net');

String result = employeeEmail(employeeIdToEmail, '878656');
System.assertEquals('info@apexsandbox.io', result, 'Should have received the default email back');
*/
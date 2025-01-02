/*
#92 - Sorting a List
Implement the method getNamesInAscOrder(), which accepts a list of fullnames as input and returns the list sorted in ascending order. 
Use the standard library method to sort.

Given the following test code:

List<String> fullNames = new List<String> { 'Blake Howard', 'Adrienne Copeland'};
List<String> result = getNamesInAscOrder(fullNames);
The expressions result[0] == 'Adrienne Copeland', result[1] == 'Blake Howard', and result.size() == 2 should be true.
*/


public List<String> getNamesInAscOrder(List<String> accountNames)
{  
    if (accountNames != null) {
        accountNames.sort();
        return accountNames;
    }
    return null;
}


/*
* Test 1
List<String> inputList = new List<String>();
List<String> expected = new List<String>();
List<String> result = getNamesInAscOrder(inputList);
System.assertEquals(expected.size(), result?.size(), 'Resulting list should have been size 0.');

* Test 2
List<String> result = getNamesInAscOrder(null);
System.assertEquals(null, result, 'Resulting list should have been null.');

* Test 3
List<String> inputList = new List<String>{ 'Adrienne Copeland', 'Maxine Colon', 'Jan Coleman', 'Margarita Miller', 'Jacqueline Mcdaniel', 'Ethel Parsons', 'Joan Nichols', 'Rachel West', 'Leroy Holland', 'Grant Collier', 'Ramon Reeves', 'Hannah Hale', 'Lamar French', 'Jesse Beck', 'Margie Griffin', 'Faye Butler', 'Shelley Nelson', 'Abel Farmer', 'Ricardo Bridges', 'Wilma Santos', 'Jane Hubbard', 'Neal Berry', 'Denise Klein', 'Tami Oliver', 'Ed Vargas', 'Morris Aguilar', 'Blake Howard', 'William Summers', 'Eloise Lynch', 'Raul Morgan', 'Sandy Curry', 'Lola Stevenson', 'Pauline Vasquez', 'Eleanor Bowen', 'Charlene Swanson', 'Jo Gonzalez', 'Malcolm Houston', 'Johnnie Day', 'Vincent Saunders', 'Wilbur Willis', 'Jeffery Robinson', 'Bradley Freeman', 'Faith Reynolds', 'Don Fitzgerald', 'Marlene Fowler', 'Sheryl Harrington', 'Jan Reese', 'Terry Welch', 'Christopher Grant', 'Flora Chavez' };
List<String> expected = new List<String>{ 'Abel Farmer', 'Adrienne Copeland', 'Blake Howard', 'Bradley Freeman', 'Charlene Swanson', 'Christopher Grant', 'Denise Klein', 'Don Fitzgerald', 'Ed Vargas', 'Eleanor Bowen', 'Eloise Lynch', 'Ethel Parsons', 'Faith Reynolds', 'Faye Butler', 'Flora Chavez', 'Grant Collier', 'Hannah Hale', 'Jacqueline Mcdaniel', 'Jan Coleman', 'Jan Reese', 'Jane Hubbard', 'Jeffery Robinson', 'Jesse Beck', 'Jo Gonzalez', 'Joan Nichols', 'Johnnie Day', 'Lamar French', 'Leroy Holland', 'Lola Stevenson', 'Malcolm Houston', 'Margarita Miller', 'Margie Griffin', 'Marlene Fowler', 'Maxine Colon', 'Morris Aguilar', 'Neal Berry', 'Pauline Vasquez', 'Rachel West', 'Ramon Reeves', 'Raul Morgan', 'Ricardo Bridges', 'Sandy Curry', 'Shelley Nelson', 'Sheryl Harrington', 'Tami Oliver', 'Terry Welch', 'Vincent Saunders', 'Wilbur Willis', 'William Summers', 'Wilma Santos' };
List<String> result = getNamesInAscOrder(inputList);
System.assertEquals(expected, result, 'Returned list should match the list of full names in ascending order');
*/
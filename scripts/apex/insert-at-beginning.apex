/*
#111 - Insert at Beginning
Implement a method that would take an element and a List of elements as arguments and 
return the same List with the element inserted at the 0th position.

For example, executing the snippet below:

List<String> cities = new List<String> {
  'Seattle',
  'Cairo',
  'London'
};
insertAtStart('Mumbai', cities);
should modify cities to have the following 4 values: ['Mumbai', 'Seattle', 'Cairo', 'London']
You are required to modify the list that is passed. Try doing so without creating any extra lists, which would mean an O(1) space complexity.
*/

public void insertAtStart(String cityName, List<String> cities) {
    if (cities.isEmpty()) {
        cities.add(cityName);
    } else {        
        cities.add(0, cityName);
        // TO-DO: Use .set() method instead of .add()
    }
}


/*

* Test 1
String cityName = 'Los Angeles';
List<String> cities = new List<String>{'Paris', 'London', 'Tokyo'};
insertAtStart(cityName, cities);
System.assertEquals(4, cities.size(), 'Resulting list should have been size one more than the passed list');
System.assertEquals('Los Angeles', cities.get(0), 'First city should be Los Angeles');
System.assertEquals('Paris', cities.get(1), 'First city should be Paris');
System.assertEquals('London', cities.get(2), 'First city should be London');
System.assertEquals('Tokyo', cities.get(3), 'First city should be Tokyo');

* Test 2
String cityName = 'Los Angeles';
List<String> cities = new List<String>();
for (Integer i=0; i<5000; i++) {
  cities.add('Imaginary City ' + i);
}
insertAtStart(cityName, cities);
System.assertEquals(5001, cities.size(), 'Resulting list should have been size one more than the passed list');
System.assertEquals('Los Angeles', cities.get(0), 'The output list meets the condition of element is added to the beginning of the list');
System.assertEquals('Imaginary City 0', cities.get(1), 'The output list meets the condition of element is added to the beginning of the list');
System.assertEquals('Imaginary City 50', cities.get(51), 'The city at index 51 should be Imaginary City 50');
System.assertEquals('Imaginary City 500', cities.get(501), 'The city at index 501 should be Imaginary City 500');
System.assertEquals('Imaginary City 4999', cities.get(5000), 'The city at index 5000 should be Imaginary City 4999');

* Test 3
String cityName = 'Los Angeles';
List<String> cities = new List<String>();
insertAtStart(cityName, cities);
System.assertEquals(1, cities.size(), 'One city should have been added to the list');
System.assertEquals(cityName, cities.get(0), 'The only city in the list should be Los Angeles');

* Test 4
String cityName = null;
List<String> cities = new List<String>{'Paris', 'London', 'Tokyo'};
insertAtStart(cityName, cities);
System.assertEquals(4, cities.size(), 'Resulting list should have been size one more than the passed list');
System.assertEquals(null, cities.get(0), 'The list with null element added meets the condition of null element is added to the beginning of the list');
*/
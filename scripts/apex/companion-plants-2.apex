/*
* #55 - Companion Plants 2
* Some plants are considered companion plants. They grow better when planted next to each other. 
* For the purpose of this problem, we consider the following plants to be companions: 
* lettuce and cucumbers, lettuce and onions, onions and carrots, and onions and tomatoes. 
* The same plants planted next to each other are not considered companions.
* 
* Write a function isCompanion that takes as input a list of plants being planted in a row. 
* Return true only if every plant in the list is planted next to a companion and return false otherwise.
* 
* companionPlants(new List { 'onions', 'lettuce', 'onions', 'carrots', 'onions', 'lettuce', 'cucumbers'}) = true
* 
* companionPlants(new List { 'lettuce', 'onions', 'carrots', 'lettuce', 'cucumbers'}) = false. 
*
* We have non-companion plants carrots and lettuce planted together
*/


public Boolean companionPlants(List<String> plants) {
    Boolean result;
    
    if (plants.size() == 0) {
        return true;
    } else if (plants.size() < 2) {
        return false;
    }

    for (Integer i=0; i<plants.size()-1; i++) {
        System.debug(plants[i] + ' ' + plants[i+1]);
        if 
        (
            (plants[i] == 'onions'    && (plants[i+1] == 'lettuce' || plants[i] == 'carrots' || plants[i] == 'tomatoes')) ||
            (plants[i] == 'lettuce'   && (plants[i+1] == 'cucumbers' || plants[i] == 'onions')) ||
            (plants[i] == 'cucumbers' &&  plants[i+1] == 'lettuce') || 
            (plants[i] == 'carrots'   &&  plants[i+1] == 'onions') || 
            (plants[i] == 'tomatoes'  &&  plants[i+1] == 'onions')
        )
        {
            result = true;
        }
        else {
            return false;
        }
    }
    return result;
}

/*
* Test 1
Boolean result = companionPlants(new List<String> { 'onions', 'lettuce',  'onions', 'onions', 'lettuce', 'cucumbers'});
System.assertEquals(false, result, 'Two onions planted together are not companions');

* Test 2
Boolean result = companionPlants(new List<String> { 'lettuce', 'lettuce',  'onions', 'tomatoes', 'onions', 'lettuce', 'cucumbers'});
System.assertEquals(false, result, 'Two lettuce planted together are not companions');

* Test 3
Boolean result = companionPlants(new List<String> { 'onions', 'lettuce',  'onions', 'tomatoes', 'onions', 'lettuce', 'tomatoes'});
System.assertEquals(false, result, 'Lettuce and tomatoes are not companions, but are planted together');

* Test 4
Boolean result = companionPlants(new List<String> { 'tomatoes', 'lettuce' });
System.assertEquals(false, result, 'Tomatoes and lettuce are not companions, but are planted together');

* Test 5
Boolean result = companionPlants(new List<String> { 'tomatoes', 'onions' });
System.assertEquals(true, result, 'Tomatoes and onions are companion plants');

* Test 6
Boolean result = companionPlants(new List<String> { 'tomatoes' });
System.assertEquals(false, result, 'A plant on its own means it is not planted next to a companion');

* Test 7
Boolean result = companionPlants(new List<String> { 'onions' });
System.assertEquals(false, result, 'A plant on its own means it is not planted next to a companion');

* Test 8
Boolean result = companionPlants(new List<String> { });
System.assertEquals(true, result, 'No plants means our condition is true: all plants are next to a companion plant if there are no plants. In logic, such statements are called vacuously true. I am sorry for this test case. Just return true if the array has size 0.');

* Test 9
Boolean result = companionPlants(new List<String> { 'onions', 'lettuce',  'onions', 'carrots', 'onions', 'cucumbers', 'lettuce', 'onions', 'tomatoes'});
System.assertEquals(false, result, 'Onions and cucumbers are not companions but are planted together.');
*/
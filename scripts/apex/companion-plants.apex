/*
* #54 - Companion Plants
* Some plants are considered companion plants. They grow better when planted next to each other. 
* For the purpose of this problem, we consider the following plants to be companions: 
* lettuce and cucumbers, lettuce and onions, onions and carrots, and onions and tomatoes.
* Write a function isCompanion that takes as input two strings plant1 and plant2. 
* If the two plants are companion plants based on the criteria described above, return true. Otherwise, return false.
*
* companionPlants('onions', 'lettuce') = true
* companionPlants('lettuce', 'tomatoes') = false
*
*/

public Boolean companionPlants(String plant1, String plant2) {
    if (plant1 == 'onions' && (plant2 == 'lettuce' || 
                               plant2 == 'carrots' || 
                               plant2 == 'tomatoes'))
        return true;
    else if (plant1 == 'lettuce' && (plant2 == 'cucumbers' || plant2 == 'onions'))
        return true;
    else if (plant1 == 'cucumbers' && plant2 == 'lettuce')
        return true;
    else if (plant1 == 'carrots' && plant2 == 'onions')
        return true;
    else if (plant1 == 'tomatoes' && plant2 == 'onions')
        return true;
    return false;
}

Boolean result = companionPlants('onions', 'lettuce');
System.debug('Onions and lettuce are companion plants.');

result = companionPlants('onions', 'carrots');
System.debug('Onions and carrots are companion plants.');

result = companionPlants('onions', 'tomatoes');
System.debug('Onions and tomatoes are companion plants.');

result = companionPlants('lettuce', 'cucumbers');
System.debug('Lettuce and cucumbers are companion plants.');

result = companionPlants('lettuce', 'onions');
System.debug('Lettuce and onions are companion plants.');

result = companionPlants('cucumbers', 'lettuce');
System.debug('Cucumbers and lettuce are companion plants.');

result = companionPlants('carrots', 'onions');
System.debug('Carrots and onions are companion plants.');

result = companionPlants('tomatoes', 'onions');
System.debug('Tomatoes and onions are companion plants.');

result = companionPlants('onions', 'cucumbers');
System.debug('Onions and cucumbers are NOT companion plants.');

result = companionPlants('lettuce', 'tomatoes');
System.debug('Lettuce and tomatoes are NOT companion plants.');

result = companionPlants('lettuce', 'carrots');
System.debug('Lettuce and carrots are NOT companion plants.');

result = companionPlants('carrots', 'tomatoes');
System.debug('Carrots and tomatoes are NOT companion plants.');

result = companionPlants('tomatoes', 'carrots');
System.debug('Tomatoes and carrots are NOT companion plants.');

result = companionPlants('tomatoes', 'lettuce');
System.debug('Tomatoes and lettuce are NOT companion plants.');
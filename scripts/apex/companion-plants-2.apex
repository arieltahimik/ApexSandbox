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

lettuce and cucumbers
lettuce and onions

onions and lettuce
onions and carrots
onions and tomatoes

*/
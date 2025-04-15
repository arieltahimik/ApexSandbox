/*
* #118 - Find Common Characters
* Given list of strings: strs, implement a method that will return all the common characters in the list. 
* The character should be repeated in the list according the minimum frequency that it occurs in the list. 
* The input will only consist of lower case letters in the English alphabet.
* 
* Example 1
* input: strs = ['cook', 'lock', 'cool,]
* output: ['c', 'o'];
* 
* input: strs = ['bella', 'label', 'roller']
* output: ['e', 'l', 'l'];
* 
* Hints:
* - Try solving with two maps
* - Convert the string to ASCII using the getChars() method to make it easier to solve. 
* - Refer to www.asciitable.com to understand what Integer is which character.
*/


public List<String> commonChars(List<String> strs){
    if (strs == null || strs.isEmpty()) {
        return new List<String>();
    }

    // Frequency map from the first string
    Map<String, Integer> mainFreq = new Map<String, Integer>();
    String first = strs[0];
    for (Integer i = 0; i < first.length(); i++) {
        String ch = first.substring(i, i + 1);
        if (mainFreq.containsKey(ch)) {
            mainFreq.put(ch, mainFreq.get(ch) + 1);
        } else {
            mainFreq.put(ch, 1);
        }
    }

    // Compare with the rest of the strings
    for (Integer i = 1; i < strs.size(); i++) {
        String currentStr = strs[i];
        Map<String, Integer> currentFreq = new Map<String, Integer>();

        for (Integer j = 0; j < currentStr.length(); j++) {
            String ch = currentStr.substring(j, j + 1);
            if (currentFreq.containsKey(ch)) {
                currentFreq.put(ch, currentFreq.get(ch) + 1);
            } else {
                currentFreq.put(ch, 1);
            }
        }

        for (String ch : new List<String>(mainFreq.keySet())) {
            if (currentFreq.containsKey(ch)) {
                mainFreq.put(ch, Math.min(mainFreq.get(ch), currentFreq.get(ch)));
            } else {
                mainFreq.remove(ch);
            }
        }
    }

    // Build the final result list
    List<String> result = new List<String>();
    for (String ch : mainFreq.keySet()) {
        Integer count = mainFreq.get(ch);
        for (Integer i = 0; i < count; i++) {
            result.add(ch);
        }
    }

    return result;
}


/*
* Test 1
List<String> strs = new List<String>{'bellla', 'label', 'roller'};
        List<String> results = commonChars(strs);
        results.sort();
        System.assert(results[0] == 'e');
        System.assert(results[1] == 'l');
        System.assert(results[2] == 'l');
        System.assert(results.size() == 3);

* Test 2
 List<String> strs = new List<String>{'cool', 'lock', 'cook'};
        List<String> results = commonChars(strs);
        System.assert(results.contains('o'));
        results.sort();
        System.assert(results[0] == 'c');
        System.assert(results[1] == 'o');       
        System.assert(results.size() == 2);

* Test 3
 List<String> strs = new List<String>{'cattle', 'tattle', 'battle', 'rattle'};
        List<String> results = commonChars(strs);
        results.sort();
        System.assert(results.size() == 5);
        System.assert(results[0] == 'a');
        System.assert(results[1] == 'e');
        System.assert(results[2] == 'l');
        System.assert(results[3] == 't');
        System.assert(results[4] == 't');
*/

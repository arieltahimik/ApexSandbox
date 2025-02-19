/*
#114 - Binary Search Opportunites
Given a list of opportunities sorted by the Amount field and an Integer target, implement a solution to 
search the list and return the index of the opportunity with an amount that is equal to the target.

If the list does not contain a matching value return negative 1.

Example 1
input: opportunities = [ {opp1, amount = 100}, {opp2, amount = 200}, {opp3, amount = 300}] target = 200;
output: 1; this is the index of opportunity with an amount = to the target

Example 2
input: opportunities = [ {opp1, amount = 100}, {opp2, amount = 200}, {opp3, amount = 300}] target = 500;
output: -1; The list does not contain a matching value

Important constraint: A solution that uses a loop to check ALL opportunities will time out. 
Look for a solution faster than the linear solution.
*/


public static Integer search(List<Opportunity> opportunities, Integer target){
    // solution here
    Integer left = 0;
    Integer right = opportunities.size();

    while (left < right) {
        // find the middle
        Integer middle = (left + right) / 2;

        if (opportunities[middle].Amount == target) {
            return middle;
        }
        if (target < opportunities[middle].Amount) {
            right = middle - 1;
        } else {
            left = middle + 1;
        }
    }
    return -1;
}


/*
* Test 1
List<Opportunity> opportunities = new List<Opportunity>();
Integer base = 100;
for (Integer i = 0; i < 10; i++) {
    opportunities.add(new Opportunity(Amount = base + i));
}
System.assert(search(opportunities, 100) == 0);

* Test 2
List<Opportunity> opportunities = new List<Opportunity>();
Integer base = 100;
for (Integer i = 0; i < 10; i++) {
    opportunities.add(new Opportunity(Amount = base + i));
}
System.assert(search(opportunities, 1000) == -1);

* Test 3
List<Opportunity> opportunities = new List<Opportunity>();
Integer base = 100;
for (Integer i = 0; i < 10; i++) {
    opportunities.add(new Opportunity(Amount = base + i));
}
System.assert(search(opportunities, 105) == 5);

* Test 4
List<Opportunity> opportunities = new List<Opportunity>();
Integer base = 100;
for (Integer i = 0; i < 500; i++) {
    opportunities.add(new Opportunity(Amount = base + i));
}
System.assert(search(opportunities, 500) == 400);

* Test 5
List<Opportunity> opportunities = new List<Opportunity>();
Integer base = 100;
for (Integer i = 0; i < 500; i++) {
    opportunities.add(new Opportunity(Amount = base + i));
}
System.assert(search(opportunities, 10000) == -1);

* Test 6
List<Opportunity> opportunities = new List<Opportunity>();
Integer base = 100;
for (Integer i = 0; i < 700000; i++) {
    opportunities.add(new Opportunity(Amount = base + i));
}

System.assert(search(opportunities, 1000000) == -1);
*/
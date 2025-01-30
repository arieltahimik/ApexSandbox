/*
* #82 - Related Accounts
* Implement the method accountIds that takes as input a list of Opportunity records, 
* and returns a set containing IDs of related accounts.
* 
* Given the following test data:
* 
* Opportunity opp1 = new Opportunity(Name = 'Opportunity 1', AccountId = '0015f00000CtulqAAB');
* Opportunity opp2 = new Opportunity(Name = 'Opportunity 2', AccountId = '0015f00000CtulqAAB');
* List<Opportunity> opps = new List<Opportunity> {opp1, opp2};
* 
* The expression accountIds(opps) returns a Set<Id> containing the single Id 0015f00000CtulqAAB 
* since both opportunities were related to the same account.
*/

public Set<Id> accountIds(List<Opportunity> opps) {
    Set<Id> oppIds = new Set<Id>();
    for (Opportunity opp : opps) {
        if (opp.accountId != null) {
            oppIds.add(opp.accountId);
        }
    }
    return oppIds;
}


/*

* Test 1
List<Opportunity> opps = new List<Opportunity>();
opps.add(new Opportunity(AccountId = '0015f00000CtulqAAB'));
opps.add(new Opportunity(AccountId = '0015f00000CtulqAAB'));
Set<Id> result = accountIds(opps);
System.assertEquals(new Set<Id> {'0015f00000CtulqAAB'}, result, 'Set should have contained single Account Id.');

* Test 2
List<Opportunity> opps = new List<Opportunity>();
Set<Id> result = accountIds(opps);
System.assertEquals(0, result.size(), 'Set should have been empty.');

* Test 3
List<Opportunity> opps = new List<Opportunity>();
opps.add(new Opportunity(Name = 'Opp 1'));
opps.add(new Opportunity(Name = 'Opp 2'));
Set<Id> result = accountIds(opps);
System.assertEquals(0, result.size(), 'Set should have been empty.');

* Test 4
List<Opportunity> opps = new List<Opportunity>();
opps.add(new Opportunity(AccountId = '0015f00000CtulqAAB'));
opps.add(new Opportunity(AccountId = '0015f00000CtuloAAB'));
opps.add(new Opportunity(AccountId = '0015f00000CtulxAAB'));
opps.add(new Opportunity(AccountId = '0015f00000CtulpAAB'));
opps.add(new Opportunity(Name = 'Opportunity with no Account'));
opps.add(new Opportunity(AccountId = '0015f00000CtuloAAB'));
opps.add(new Opportunity(AccountId = '0015f00000CtulsAAB'));
Set<Id> result = accountIds(opps);
Set<Id> expected = new Set<Id> {'0015f00000CtulqAAB', '0015f00000CtulxAAB', '0015f00000CtulpAAB', '0015f00000CtuloAAB', '0015f00000CtulsAAB'};
System.assertEquals(expected, result, 'Set should have contained the 5 unique Account Ids.');
*/
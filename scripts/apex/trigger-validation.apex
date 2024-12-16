/*
* #105 - Trigger Validation
* Implement the method validateInsert, which accepts a newly inserted list of opportunities as an input and 
* adds errors to the opportunity fields as follows: if the opportunity record's StageName is 'Closed Won' and 
* the Description is null or empty, add an error on the Description field of that record with the error message 
* set to 'Description should not be empty for Closed Won opportunity.'.
* 
* Please see the code snippet below for an example of how such a method can be used for custom validation in a before trigger:
* 
* Trigger OpportunityTrigger on Opportunity (before insert){ 
*     if (Trigger.isBefore){ 
*         OpportunityTriggerHandler handler = 
*             new OpportunityTriggerHandler(); 
*         List<Opportunity> opportunities = 
*             handler.validateInsert(Trigger.new);
*     }
* }
* 
* Given the following test code:
* 
* List<Opportunity> oppList = new List<Opportunity>();
* oppList.add(new Opportunity(
*     StageName = 'Closed Lost', Description = 'Testing'));
* oppList.add(new Opportunity(
*     StageName = 'Closed Won'));
* oppList.add(new Opportunity(
*     StageName = 'Closed Won',Description ='Testing'));
* oppList.add(new Opportunity(
*     StageName = 'Qualification'));
* 
* validateInsert(oppList);
* oppList should now contain 1 error message on 2nd record of the list with proper error message on the Description field.
*/


public void validateInsert(List<Opportunity> opportunities){
    //code here
    for (Opportunity opp : opportunities) {
        if (opp.StageName == 'Closed Won' && String.isBlank(opp.Description)) {
            opp.Description.addError('Description should not be empty for Closed Won opportunity.');
        }
    }
}


/*
* Test 1
List<opportunity> oppList = new List<Opportunity>();
oppList.add(new Opportunity(StageName = 'Closed Lost', Description = 'Testing'));
oppList.add(new Opportunity(StageName = 'Closed Won'));
oppList.add(new Opportunity(StageName = 'Closed Won',Description ='Testing'));
oppList.add(new Opportunity(StageName = 'Qualification'));

validateInsert(oppList);
public Integer hasError(List<Opportunity> oppList){
    String ERROR_MESG = 'Description should not be empty for Closed Won opportunity.';
    Integer errorSize = 0;
    for (Opportunity op : oppList){
        List<Database.Error> errors = op.getErrors(); // Get Error
        for(Database.Error error : errors)
        {
            //system.debug(error.getMessage());
            if(error.getMessage() == ERROR_MESG)
                errorSize++;
        }
    }
    return errorSize;
}

system.assertEquals(1, hasError(oppList), 'The list should contain an error on description with the proper given message.');


* Test 2

List<opportunity> oppList = new List<Opportunity>();
oppList.add(new Opportunity(StageName = 'Closed Lost', Description = 'Testing'));
oppList.add(new Opportunity(StageName = 'Qualification',Description = 'Testing'));
validateInsert(oppList);

public Integer hasError(List<Opportunity> oppList){
    String ERROR_MESG = 'Description should not be empty for Closed Won opportunity.';
    Integer errorSize = 0;
    for (Opportunity op : oppList){
        List<Database.Error> errors = op.getErrors(); // Get Error
        for(Database.Error error : errors)
        {
            //system.debug(error.getMessage());
            if(error.getMessage() == ERROR_MESG)
                errorSize++;
        }
    }
    return errorSize;
}
system.assertEquals(0, hasError(oppList), 'The list should not any error on description');


* Test 3
List<opportunity> oppList = new List<Opportunity>();
oppList.add(new Opportunity(StageName = 'Closed Lost', Description = 'Testing'));
oppList.add(new Opportunity(StageName = 'Closed Won'));
oppList.add(new Opportunity(StageName = 'Qualification',Description = 'Testing'));
oppList.add(new Opportunity(StageName = 'Closed Won'));
oppList.add(new Opportunity(StageName = 'Closed Won'));
oppList.add(new Opportunity(StageName = 'Closed Won'));
validateInsert(oppList);

public Integer hasError(List<Opportunity> oppList){
    String ERROR_MESG = 'Description should not be empty for Closed Won opportunity.';
    Integer errorSize = 0;
    for (Opportunity op : oppList){
        List<Database.Error> errors = op.getErrors(); // Get Error
        for(Database.Error error : errors)
        {
            //system.debug(error.getMessage());
            if(error.getMessage() == ERROR_MESG)
                errorSize++;
        }
    }
    return errorSize;
}
system.assertEquals(4, hasError(oppList), 'The list should contain an error on description with the proper given message.');


* Test 4

List<opportunity> oppList = new List<Opportunity>();
oppList.add(new Opportunity(StageName = 'Closed Lost', Description = 'Testing'));
oppList.add(new Opportunity(StageName = 'Closed Won'));
oppList.add(new Opportunity(StageName = 'Closed Won',Description =''));
oppList.add(new Opportunity(StageName = 'Qualification'));

validateInsert(oppList);

public Integer hasError(List<Opportunity> oppList){
    String ERROR_MESG = 'Description should not be empty for Closed Won opportunity.';
    Integer errorSize = 0;
    for (Opportunity op : oppList){
        List<Database.Error> errors = op.getErrors(); // Get Error
        for(Database.Error error : errors)
        {
            //system.debug(error.getMessage());
            if(error.getMessage() == ERROR_MESG)
                errorSize++;
        }
    }
    return errorSize;
}

system.assertEquals(2, hasError(oppList), 'The list should contain an error on description with the proper given message.');
*/
/*
#61 - Escalate Cas
In-progress cases dealing with mechanical or electrical breakdown need to be escalated. 
Implement a method escalateIfMeetsCriteria that takes as input a Case record, and sets 
the IsEscalated field to true if Type is Mechanical or Electrical, Reason is Breakdown, 
and Status is In Progress

Given the following test code:

Case c = new Case();
c.Type = 'Mechanical';
c.Reason = 'Breakdown';
c.Status = 'In Progress';
escalateIfMeetsCriteria(c);
The expression c.IsEscalated should evaluate to true because the case meets the criteria for escalations.
*/


public void escalateIfMeetsCriteria(Case c) {
    // if (c.Type == 'Mechanical' || c.Type == 'Electrical') {
    //     if (c.Reason == 'Breakdown' && c.Status == 'In Progress') {
    //         c.IsEscalated = true;
    //     }
    // }

    if
    (
        (c.Type == 'Mechanical' || c.Type == 'Electrical') &&
        (c.Reason == 'Breakdown' && c.Status == 'In Progress')
    ) {
        c.IsEscalated = true;
    }
}


/*
*Test 1
Case c = new Case();
c.Type = 'Mechanical';
c.Reason = 'Breakdown';
c.Status = 'In Progress';
escalateIfMeetsCriteria(c);
System.assert(c.IsEscalated, 'Mechanical breakdown case is in progress and should be escalated.');

*Test 2
Case c = new Case();
c.Type = 'Mechanical';
c.Reason = 'Breakdown';
c.Status = 'In Progress';
c.IsEscalated = true;
escalateIfMeetsCriteria(c);
System.assert(c.IsEscalated, 'Mechanical breakdown case is in progress and should remain escalated.');

*Test 3
Case c = new Case();
c.Type = 'Electrical';
c.Reason = 'Breakdown';
c.Status = 'In Progress';
escalateIfMeetsCriteria(c);
System.assert(c.IsEscalated, 'Electrical breakdown case is in progress and should be escalated.');

*Test 4
Case c = new Case();
c.Type = 'Electronic';
c.Reason = 'Breakdown';
c.Status = 'New';
escalateIfMeetsCriteria(c);
System.assert(!c.IsEscalated, 'Electronic breakdown case is in progress and should not be escalated.');

*Test 5
Case c = new Case();
c.Type = 'Mechanical';
c.Reason = 'Breakdown';
c.Status = 'Closed';
escalateIfMeetsCriteria(c);
System.assert(!c.IsEscalated, 'Mechanical breakdown case is closed and should not be escalated.');

*Test 6
Case c = new Case();
c.Type = 'Electrical';
c.Reason = 'Breakdown';
c.Status = 'New';
escalateIfMeetsCriteria(c);
System.assert(!c.IsEscalated, 'Electrical breakdown case is new and should not be escalated.');

*Test 7
Case c = new Case();
c.Type = 'Mechanical';
c.Reason = 'Performance';
c.Status = 'In Progress';
escalateIfMeetsCriteria(c);
System.assert(!c.IsEscalated, 'Mechanical performance case is in progress and should not be escalated.');

*Test 8
Case c = new Case();
c.Type = 'Electronic';
c.Reason = 'Breakdown';
c.Status = 'In Progress';
c.IsEscalated = true;
escalateIfMeetsCriteria(c);
System.assert(c.IsEscalated, 'Escalated case does not meet escalation criteria, but should not have been de-escalated');
*/
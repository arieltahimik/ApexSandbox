/*
#19 - Passing Students
A student passes a course if any two of the following three conditions are true: 
they have passed the exam, they have passed assignments, and they have passed the course project.

Implement the function isPassed that takes in three parameters passedExam, passedAssignments, 
and passedProject, and returns true of at least two of the passed variables are true.

isPassed(true, false, true) = true. Student did not pass assignments, 
but passes overall because they passed the exam and the project.

isPassed(false, false, true) = false. Student only passed the project, 
and therefore does not pass overall.
*/

public Boolean isPassed(Boolean passedExam, Boolean passedAssignments, Boolean passedProject) {
    return  (passedExam && passedAssignments) || 
            (passedExam && passedProject) ||
            (passedAssignments && passedProject);
}

Boolean result = isPassed(false, false, false);
System.debug(result + ' >>> Student does not pass any of the 3 criteria');

result = isPassed(true, false, false);
System.debug(result + ' >>> Student passes only 1 of the 3 criteria');

result = isPassed(false, true, false);
System.debug(result + ' >>> Student passes only 1 of the 3 criteria');

result = isPassed(false, false, true);
System.debug(result + ' >>> Student passes only 1 of the 3 criteria');

result = isPassed(true, true, false);
System.debug(result + ' >>> Student passes 2 of the 3 criteria');

result = isPassed(true, false, true);
System.debug(result + ' >>> Student passes 2 of the 3 criteria');

result = isPassed(false, true, true);
System.debug(result + ' >>> Student passes 2 of the 3 criteria');

result = isPassed(true, true, true);
System.debug(result + ' >>> Student passes all 3 criteria');
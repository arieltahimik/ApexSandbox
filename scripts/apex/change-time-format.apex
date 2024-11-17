/*
* #79 - Change Time Format
* 13:50 and 01:50 PM are 24-hour and 12-hour representations of the same time. 
* Implement the method changeTimeFormat that takes as input a string strTime formatted 
* as a 24-hour string, and returns the equivalent 12-hour string.
* 
* Examples:
* changeTimeFormat('08:05') returns '08:05 AM'
* changeTimeFormat('00:05') returns '12:05 AM'
* changeTimeFormat('23:15') returns '11:15 PM'
*/

public String changeTimeFormat(String strTime) {
    String hours = strTime.substringBefore(':');
    String minutes = strTime.substringAfter(':');
    Integer intHrs = Integer.valueOf(hours);
    Integer intMins = Integer.valueOf(minutes);

    String period = (intHrs < 12) ? 'AM' : 'PM';
    intHrs = (intHrs == 0 || intHrs == 12) ? 12 : (intHrs < 12) ? intHrs : intHrs - 12;

    String formattedHours = (intHrs < 10) ? '0' + String.valueOf(intHrs) : String.valueOf(intHrs);
    return formattedHours + ':' + minutes + ' ' + period;
}


String result = changeTimeFormat('08:05');
System.debug(result + ' <<< Result should be 08:05 AM');

result = changeTimeFormat('12:00');
System.debug(result + ' <<< Result should be 12:00 PM');

result = changeTimeFormat('00:00');
System.debug(result + ' <<< Result should be 12:00 AM');

result = changeTimeFormat('13:59');
System.debug(result + ' <<< Result should be 01:59 PM');

result = changeTimeFormat('18:45');
System.debug(result + ' <<< Result should be 06:45 PM');

result = changeTimeFormat('00:01');
System.debug(result + ' <<< Result should be 12:01 AM');

result = changeTimeFormat('12:30');
System.debug(result + ' <<< Result should be 12:30 PM');

result = changeTimeFormat('00:30');
System.debug(result + ' <<< Result should be 12:30 AM');

result = changeTimeFormat('23:09');
System.debug(result + ' <<< Result should be 11:09 PM');

result = changeTimeFormat('01:00');
System.debug(result + ' <<< Result should be 01:00 AM');

result = changeTimeFormat('10:25');
System.debug(result + ' <<< Result should be 10:25 AM');
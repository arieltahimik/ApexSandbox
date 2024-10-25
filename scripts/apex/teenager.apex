/**
 * #18 - Teenager
 * Given a person's age, return true if the person is a teenager (age 13 - 19). 
 */

public Boolean isTeenager(Integer age) {
    //return (age >= 13 && age <= 19) ? true : false;
    
    if (age >= 13 && age <= 19)
        return true;
    else 
        return false;
}

System.debug(isTeenager(5));  //false
System.debug(isTeenager(15)); //true
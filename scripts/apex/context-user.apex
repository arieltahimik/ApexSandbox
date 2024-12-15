/*
#106 - Context User
Implement the method getContextUserInformation(), which returns a Map of the current logged in user's (context user's) 
UserName, ProfileId, EmailId, and Type as keys and their field values as corresponding values in the map. 

Given the following sample code:
Map<String,String> userMap = getContextUserInformation();

The returned map should contain the following information:
Key   
      Value
EmailId     sample@apexsandbox.io
ProfileId   00e5g000021MG3eAAG
Type        Standard
UserName    admin@apexsandbox.io
Note: These values will be different for every user as they depend on the running user.
*/

public Map<String,String> getContextUserInformation(){
    //code here
    Map<String, String> userInformation = new Map<String, String>();
    userInformation.put('EmailId', UserInfo.getUserEmail());
    userInformation.put('ProfileId', UserInfo.getProfileId());
    userInformation.put('Type', UserInfo.getUserType());
    userInformation.put('UserName', UserInfo.getUserName());
    return userInformation;
}

/*
*Test 1
Map<String,String> userMap = getContextUserInformation();
System.assertEquals(4,userMap.size(),'The size of returned map must be 4');

*Test 2
Map<String,String> userMap = getContextUserInformation();
System.assertEquals(UserInfo.getUserName(),userMap.get('UserName'),'User name does not match with Context User name.');

*Test 3
Map<String,String> userMap = getContextUserInformation();
System.assertEquals(UserInfo.getProfileId(),userMap.get('ProfileId'),'User Profile Id does not match with Context User Profile Id.');

*Test 4
Map<String,String> userMap = getContextUserInformation();
System.assertEquals(UserInfo.getUserEmail(),userMap.get('EmailId'),'User Email Id does not match with Context User Email Id.');

*Test 5
Map<String,String> userMap = getContextUserInformation();
System.assertEquals(UserInfo.getUserType(), userMap.get('Type'),'User Type does not match with Context User Type.');
*/
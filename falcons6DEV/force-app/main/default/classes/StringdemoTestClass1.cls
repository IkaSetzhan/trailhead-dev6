public  class StringdemoTestClass1 {
    public void Stringmethod1() {
        string sessionDescripton = 'learning string methods in apex abs test';
        integer lengthofString = sessionDescripton.length();
        System.debug('learning string methods in apex abs test ' +lengthofString); 
       
        String sessionDescriptionUpper = sessionDescripton.toUpperCase();
        system.debug(sessionDescriptionUpper);


 boolean containsApex = sessionDescripton.contains('apex');
 Boolean containsApex2 = sessionDescriptionUpper.containsIgnoreCase('apex');
 Boolean containsApex3 = sessionDescriptionUpper.contains('apex');
 Boolean containsSalesforce = sessionDescriptionUpper.contains('Salesforce');
 system.debug('Contains Apex: ' +containsApex);
 System.debug('Contains Apex: ' +containsApex2);
 system.debug('contains: '+containsApex3 );
 system.debug('Salesforce: '+containsSalesforce );
    }
}

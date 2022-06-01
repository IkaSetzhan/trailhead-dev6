public class StringDemoClass {
    //return type of below method is void.
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language.';

        //1. length
        //length is string's class method. Which returns INTEGER.
        integer lengthOfStr = sessionDescription.length();

        system.debug('length of string is = ' + lengthOfStr);

        //2 upper case
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);
        system.debug('original string = ' + sessionDescription);
        //3 contains 'apex'
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('has Apex? ' + containsapex);
        boolean containsApex3 = sessionDescription.contains('apex');
        system.debug('has Apex? ' + containsapex3);
        //3.1
        boolean containsSalesforce = sessionDescription.contains('SalesForce');
        system.debug('has Apex? ' + containsSalesforce);
        //3.2 
        boolean containsAPEX2 =  sessionDescription.containsIgnoreCase('APEX');
        system.debug('has APEX? ' + containsApex2);
        //4
        string apexx = 'apex';
        string ap = 'APEXX';
    
        boolean apexCheck = apexx.equals('apex');
            system.debug('apex check ' + apexcheck);
    }
}
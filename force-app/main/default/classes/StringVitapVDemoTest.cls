@isTest
public with sharing class StringVitapVDemoTest {
    @isTest
   private static void testConcate(){
    string str = StringVitapVDemo.concateAndUpperCase('test', 'method1');
    system.debug(str);
    system.assertEquals('TEST , METHOD1', str);
   }
}

public with sharing class CustomerTriggerHandler {
    public static void updateRelatedPayments(Set<Customer__c> triggerOld) {
        set<Id> active = new set<id>();
       set<Id> inactive = new set<id>();
        for(customer__c c: triggerold){
            if(c.Is_Active__c ==true){
                Is_Active__c.add(c.id);
            }ELSE{
                inactive.add(c.id);
            }
        }
        if(!Is_Active__c.isEmpty()){
          List<Payment__c> payments1 = [select id from Payment__c where Customer__c in :Is_Active__c];
            if(!payments1.isEmpty())
            delete payments1;
        }
        if(!Inactive.isEmpty()){
            List<Payment__c> onlines =[select id from Payment__c where Customer__c in :inactive and Mode__c='Online'];
            if(!onlines.isEmpty())
            delete onlines;
        }
    }
}

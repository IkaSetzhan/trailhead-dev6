trigger SalesforcePTrigger on salesforce_Project__c (before insert, after insert, after update) {
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger called');
        SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newmap.keySet());
        system.debug('future method called already. second method calling');
    SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.new);
}
if(trigger.isAfter && trigger.isUpdate){
    SalesforceProjectTriggerHandler.spCompletedstatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
}
trigger AccountPrac6Trigger on Account (before insert, after insert, before update, after update) {
    if(trigger.isBefore && trigger.isUpdate){
        AccountPrac6TriggerHandler.validateAnnualRevenue(Trigger.new, Trigger.oldMap);
    }
}
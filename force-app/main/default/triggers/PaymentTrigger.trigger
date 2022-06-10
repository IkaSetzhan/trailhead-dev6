trigger PaymentTrigger on Payment__c (after insert, after update, after delete, after undelete) {
    if(trigger.isAfter && trigger.Isinsert){
        PaymentTriggerHandler.createPayment(trigger.New);
    }
    if(trigger.IsAfter && trigger.isUpdate){
        PaymentTriggerHandler.updatePayment(Trigger.New, Trigger.oldMap);
    }

    if(trigger.IsAfter && trigger.IsDelete){
     PaymentTriggerHandler.deletePayment(Trigger.old);
    }
    if(trigger.IsAfter && trigger.IsunDelete){
        PaymentTriggerHandler.undeletePayment(Trigger.New);
}
}

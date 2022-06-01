trigger CustomerTrigger on Customer(before delete) {
    if(trigger.Isbefore && trigger.IsDelete){
        CustomerTriggerHandler.updateRelatedPayments(Trigger.Old);

    }

}
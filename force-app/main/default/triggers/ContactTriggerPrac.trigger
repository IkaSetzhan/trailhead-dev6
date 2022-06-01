trigger ContactTriggerPrac on Contact (before insert, before Update, after Insert , After Update) {
if(trigger.IsBefore && trigger.IsInsert ){
    ContactTriggerHandler.updateContactPhone(Trigger.New);
}

//system.debug('Contacts records are being updated and you are getting this message from a debug in contactTrigger ');

/*1. Whenever an existing record in Contact Object is updated then just show “Contacts records are 
being updated and you are getting this message from a debug in contactTrigger”*/
}
//2. Whenever a new Lead record is created then show "[LeadName] is created successfully"

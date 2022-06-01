trigger caseTrigger on Case (before insert, after insert, before update, after Update) {
    system.debug('before insert trgr called');

if(trigger.isBefore && trigger.isUpdate){
    caseTriggerHandler.countTriggerExecution++;
    system.debug('# of times trgr executed: ' + CaseTriggerHandler.countTriggerExecution);
    CaseTriggerHandler.countrecordsUpdated+=trigger.size;
    system.debug('# of records updated = ' +CaseTriggerHandler.countrecordsUpdated);
}
}
   
       // system.debug('We are in the triggers');
       // if(trigger.IsAfter){
        //    system.debug('We are in the after triggers');
          
      //  }
      //  if(trigger.isBefore){
        //    system.debug('We are in the before triggers');
       // }
       // if(trigger.isUpdate && trigger.isBefore){
           // system.debug('We are in the before-Update triggers');
       // }
      //  if(trigger.isBefore && trigger.isInsert){
         //   system.debug('We are in the before-Insert triggers"');
        //}
       // if(trigger.isAfter && trigger.IsUpdate){
       //     system.debug('We are in the after-Update triggers');
       // }
       // if(trigger.isAfter && trigger.isInsert){
           // system.debug('We are in the after-Insert triggers');
        //}
    
    //}
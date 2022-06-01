trigger CaseTriggerPrac on Case (before insert) {
//1. Show the message as 'Case origin is changed for [Case Number]' whenever case origin field 
//value is changed.
//if(trigger.isUpdate && trigger.isBefore){
    //for(case eachCase : trigger.new){
       // if (trigger.oldmap.get(eachCase.Id).Origin!= eachCase.Origin) {
       // system.debug('Case origin is changed for ' + eachCase.CaseNumber);
           if(trigger.isBefore && trigger.isInsert) {
            CasePrac6TrigggerHandler.updateSatusAndPriority(trigger.new, trigger.old, trigger.oldMap, trigger.NewMap);
           }
        }
      
    



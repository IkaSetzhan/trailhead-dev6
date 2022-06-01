trigger OppPrac6Trigger on Opportunity (before insert, after insert, before update, after update) {
    if(trigger.isbefore && trigger.isInsert){
        OpportunityPrac6TriggerHandler.printOppDetials(trigger.new);
        system.debug('# of records in execution: ' + trigger.size);
    }
    if(trigger.isBefore && trigger.IsUpdate){
        OpportunityPrac6TriggerHandler.printOppUpdatedetails(trigger.new, trigger.old, trigger.oldMap, trigger.newMap);
        OpportunityPrac6TriggerHandler.printOppNameDesc(trigger.new, trigger.old, trigger.oldMap, trigger.newMap);
    }
  
        
    }
   


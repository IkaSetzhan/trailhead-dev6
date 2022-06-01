trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) { 
    //1. When an opportunity is created show a debug message ([OpportunityName] – [CloseDate] –
//[Amount]) for each opportunity and print the total number of opportunities created in the 
//transaction. For example: Demo Opportunity – 20/10/2022 – 40000.
    //if(trigger.isAfter && trigger.isInsert){
 //
    //}
    //}
    //2. Print the Old and New Amount field values in one line. Old and New Close Date field values in 
//another line for opportunity when opportunities are updated
if(trigger.isAfter && trigger.isUpdate){
    OpportunityTriggerPrac6Handler.oldAndNewValues(Trigger.new, trigger.Old, trigger.NewMap, Trigger.Oldmap);   
}
//3. When the StageName of an opportunity is updated, then print the value of description field and 
//opportunity name. 

      
        if(trigger.isBefore && trigger.isUpdate){
            OpportunityTriggerPrac6Handler.updateStatus(Trigger.new, trigger.Old, trigger.NewMap, Trigger.Oldmap);
        }

        if(trigger.isBefore && trigger.isInsert){
            
            OpportunityTriggerHandler.updateCloseDate(Trigger.new, trigger.Old, trigger.NewMap, Trigger.Oldmap);
        }
        }
    

    //if(trigger.isAfter && trigger.isUpdate){
    //OpportunityTriggerHandler.closeDateOpp(Trigger.New, Trigger.Old, trigger.NewMap, Trigger.OldMap);
//}
//}
//map<id, Opportunity> oldOppMap = trigger.oldmap;
//for(  Opportunity eachOpp : trigger.new){
    //system.debug('new opportunity name  ' +eachOpp.Name+ ' new opp amount ' +eachOpp.Amount);
    //system.debug('old opp name ' + oldOppMap.get(eachOpp.Id).Name + 'old opp amount ' +oldOppMap.get(eachOpp.Id).Amount);

//}
//}
//}
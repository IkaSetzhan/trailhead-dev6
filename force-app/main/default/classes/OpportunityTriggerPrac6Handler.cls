public with sharing class OpportunityTriggerPrac6Handler {
    //1. Prac week-6, part1.1   When an opportunity is created show a debug message ([OpportunityName] – [CloseDate] – 
//[Amount]) for each opportunity and print the total number of opportunities created in the 
//transaction. For example: Demo Opportunity – 20/10/2022 – 40000.

    public  static void createTotalNumber(list<Opportunity> oppTriggerNew, 
    List<Opportunity> oppTriggerOld,
    Map<id, Opportunity> oppTriggerNewMap, 
    Map<id, Opportunity> oppTriggerOldMap) {
        for(Opportunity eachOpp : oppTriggerNew){
            system.debug('  ---' +eachOpp.Name+ '  ---  ' +eachOpp.CloseDate+ ' ---' +eachOpp.Amount);
        }
       system.debug('total number of opp  ' +oppTriggerNew.size());

       }
   // 2. Print the Old and New Amount field values in one line. Old and New Close Date field values in 
//another line for opportunity when opportunities are updated.
    public static void oldAndNewValues(list<Opportunity> oppTriggerNew, 
    List<Opportunity> oppTriggerOld,
    Map<id, Opportunity> oppTriggerNewMap, 
    Map<id, Opportunity> oppTriggerOldMap){
        For(Opportunity  eachOpp : oppTriggerNew){
            Opportunity oldOpp= oppTriggerOldMap.get(eachOpp.id);
            system.debug('new amount= ' +eachOpp.Amount+ ' = old Amonut' +oldOpp.Amount);
            system.debug(' new close date = ' + eachOpp.CloseDate+ '=Old close Date' +oldOpp.CloseDate);
        }

    }
    //3. When the StageName of an opportunity is updated, then print the value of description field and 
//opportunity name.
public static void updateStageName(list<Opportunity> oppTriggerNew, 
                               List<Opportunity> oppTriggerOld,
                                Map<id, Opportunity> oppTriggerNewMap, 
                                    Map<id, Opportunity> oppTriggerOldMap){

                                    
for(Opportunity eachOpp : oppTriggerNew){
    if(eachOpp.stageName !=oppTriggerOldMap.get(eachOpp.id).StageName){
        system.debug('This is description ' +eachOpp.description+ 'opp name ' +eachOpp.Name);
    }
}
}
//2. Prac week-6, Part2
//1.Make sure user is not able to change the status of an opportunity once opportunity is updated to 
//closed won or closed lost.
public static void updateStatus(list<Opportunity> oppTriggerNew, 
                                List<Opportunity> oppTriggerOld,
                                Map<id, Opportunity> oppTriggerNewMap, 
                                Map<id, Opportunity> oppTriggerOldMap){
     for(Opportunity oldOpp : oppTriggerOld){
         if(oldOpp.StageName == 'Closed Won' || oldOpp.StageName == 'Closed Lost'){
             if(oldOpp.StageName!=oppTriggerNewMap.get(oldOpp.Id).StageName){
             oppTriggerNewMap.get(oldOpp.Id).StageName.addError('not able to change this opp');
             
             }

     }                               
 }
}
}

   






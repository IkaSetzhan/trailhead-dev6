public with sharing class OpportunityTriggerHandler {
    public static void closeDateOpp(list<Opportunity> oppTriggerNew, 
                                    List<Opportunity> oppTriggerOld,
                                    Map<id, Opportunity> oppTriggerNewMap, 
                                    Map<id, Opportunity> oppTriggerOldMap) {
    for (Opportunity eachOpp  : oppTriggerNew) {
        if(trigger.isUpdate && eachOpp.closeDate< oppTriggerOldMap.get(eachOpp.id).CloseDate){
            eachOpp.CloseDate.addError('Close Date can not be update to less that what already provided');
        }
        
    }

    }
    //3.2. Whenever new Opportunity is created with stageName as closed won or closed lost, then set 
//closeDate as today otherwise set closed date as 15 days from today.
public static void updateCloseDate(list<Opportunity> oppTriggerNew, 
            List<Opportunity> oppTriggerOld,
         Map<id, Opportunity> oppTriggerNewMap, 
        Map<id, Opportunity> oppTriggerOldMap){
            for(Opportunity newOpp :oppTriggerNew){
                if(newOpp.StageName == 'Closed Won' || newOpp.StageName == 'Closed Lost') {
                    newOpp.CloseDate =date.today();
                }else{
                    newOpp.CloseDate = date.today().addDays(15);
                }
                }
            }
        }



public with sharing class OpportunityPrac6TriggerHandler {
      /* PRAC week6. part1.1.When an opportunity is created show a debug message ([OpportunityName] – [CloseDate] – 
[Amount]) for each opportunity and print the total number of opportunities created in the 
transaction. For example: Demo Opportunity – 20/10/2022 – 40000.*/
    public static void printOppDetials(List<Opportunity> oppTriggerNew) {
            List<Opportunity> oppNew = oppTriggerNew;
            for(Opportunity eachOpp : oppNew){
                system.debug(eachOpp.Name + '  ===' +eachOpp.CloseDate+ '====' +eachOpp.Amount);
            }
         
        }
/*PRAC week6 part 1.2.Print the Old and New Amount field values in one line. Old and New Close Date field values in 
another line for opportunity when opportunities are updated.*/
        public static void printOppUpdatedetails(List<Opportunity> oppTriggerNew, 
                                                List<Opportunity> oppTriggerOld,
                                                 Map<id, Opportunity> oppTriggerNewMap, 
                                                Map<id, Opportunity> oppTriggerOldMap){
         for(Opportunity eachOpp : oppTriggerNew){
             Opportunity oldOpp = oppTriggerOldMap.get(eachOpp.Id);
             system.debug('new Amount = '  +eachOpp.Amount+ ', old Amount= ' +oldOpp.Amount);
             system.debug('new Close Date = '  +eachOpp.CloseDate+ ', old Close Date = ' +oldOpp.CloseDate);
         }                                           
                                        
    }
    /*. PRAC week6. part1.3. When the StageName of an opportunity is updated, then print the value of description field and 
opportunity name. */
    public static void printOppNameDesc(List<Opportunity> oppTriggerNew, 
                                        List<Opportunity> oppTriggerOld,
                                         Map<id, Opportunity> oppTriggerNewMap, 
                                        Map<id, Opportunity> oppTriggerOldMap){
     for(Opportunity o : oppTriggerNew){
         if(o.StageName != oppTriggerOldMap.get(o.Id).StageName){
             system.debug('description of opp is  '+ o.Description+ ' opp name is ' +o.Name);
         }
     }                                       
                                        }
   
                                    }


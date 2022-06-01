public class OpportunityNoActivityBatch  implements database.Batchable<SObject>, database.stateful{
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator ql = Database.getQueryLocator([select id, OwnerId, CloseDate, Description from opportunity where StageName !='Closed Lost' and StageName != 'Closed Won' and LastModifiedDate < LAST_N_DAYS :7]);

        system.debug(ql);
        return ql;
        
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> lstOpp){
     List<Task> createTasks = new List<Task>();
        for(Opportunity eachOpp : lstOpp){
       Task newtask = new Task();
       newtask.Subject = 'Other';
       newtask.Description  = 'Reminder – Please act on the Opportunity';
       newtask.WhatId = eachOpp.Id;
       newtask.OwnerId = eachOpp.OwnerId;
       newtask.Status = 'In Progress';
       if(eachOpp.CloseDate<Date.today()){
        newtask.ActivityDate = Date.today();
       }else{
          newtask.ActivityDate=eachOpp.CloseDate.addDays(-2);
       }
       createTasks.add(newtask);


        }
       insert createTasks;
       

          
        }
        public void finish(Database.BatchableContext bc){
            System.debug('create new Task ');
        }
    }
      

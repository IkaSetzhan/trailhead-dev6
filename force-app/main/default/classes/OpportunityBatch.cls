public class OpportunityBatch  implements database.Batchable<SObject>{
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator ql = Database.getQueryLocator([select id from opportunity where StageName ='Closed Lost']);
        system.debug(ql);
        return ql;
  

    }
    public void execute(Database.BatchableContext bc, List<Opportunity> listopp){
        List<Opportunity> deleteAllOpp = new List<Opportunity>();
       delete listopp;
        }
        public void finish(Database.BatchableContext bc){
            system.debug('delete  all the opportunities which were updated as closed Lost ');
        }
}

trigger myTrigger on Opportunity (before insert) {
    // it will run after when we make any DML operation on Opp sobject
    // if before insert first our trigger will fire then DML starts work
    //DML: insert uodate delete upsert
    // it 
    if(trigger.isBefore){
        system.debug('Hello, before insert trigger');
    }
    if(trigger.isAfter){
 system.debug('Hello, after insert trigger');
    }

}
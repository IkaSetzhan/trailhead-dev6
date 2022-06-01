trigger LeadTrigger on Lead (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        for(lead eachLd : trigger.new)
      
            system.debug(' lead first&Last name is created succesfully ' +eachLd.LastName);
        }
    }




//. Whenever Lead is created with LeadSource as Web then show "Rating should be Cold" message 
//otherwise show "Rating should be hot".
/*if(trigger.isAfter && trigger.isInsert){
    list<lead> listUpdate = trigger.new;
    for (Lead  eachlead : listUpdate) {
        if(eachlead.LeadSource == 'web'){
            system.debug('Rating should be Cold');
        }else{
            system.debug('Rating should be hot');
        }
        }
        
    }
}*/

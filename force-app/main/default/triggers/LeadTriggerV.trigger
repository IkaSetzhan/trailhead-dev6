trigger LeadTriggerV on Lead (before insert, after insert, before update, after update){
    system.debug('=====START====');
    system.debug('trigger.isbefore = ' +trigger.isBefore);
    system.debug('trigger.isafter = ' +trigger.isAfter);
    if(trigger.isAfter){
        system.debug('Lead supdatedafter insert trgr');
    }
    if(trigger.isBefore){
        system.debug('lead updating before insert trgr.');
    }
    system.debug('=====END====');
    }
   

    



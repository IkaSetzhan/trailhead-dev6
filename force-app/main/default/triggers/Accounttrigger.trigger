trigger Accounttrigger on Account (before insert, before update, after insert, after update) {
  //if(trigger.isInsert && trigger.isAfter){
  //  AccountPrac6TriggerHandler.createContact(trigger.new);
 // }
  //if(trigger.isAfter && trigger.IsUpdate){
   // AccountPrac6TriggerHandler.updateOpps(trigger.new);
  //}
  if(trigger.IsAfter && trigger.IsUpdate){//ASK Sumit
    AccountPrac6TriggerHandler.arterUpdate(Trigger.New, Trigger.Old, Trigger.oldMap, Trigger.newMap);
  }
    //system.debug('before insert/update trigger called');
    //AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
   // system.debug('before insert/update trigger end.');
    
}

  

  //if(trigger.IsUpdate && trigger.IsAfter) {
  //AccountTriggerHandler.accphoneUpdate(trigger.new, Trigger.Old, trigger.newMap, trigger.oldMap);
  //}
//}


  //if(trigger.IsInsert && trigger.IsAfter){
    //AccountTriggerHandler.createAccContact(trigger.new);
  //}
  //if(trigger.IsAfter && trigger.IsUpdate){
   // AccountTriggerHandler.oppUpdate(trigger.new, Trigger.Old, trigger.newMap, trigger.oldMap);
  
  //}
  
//}
  
  //if(trigger.isBefore && trigger.isUpdate){
   // AccountPrac6Handler.annualValidationRule(Trigger.new, trigger.Old, trigger.NewMap, Trigger.oldMap);
 // }
//}
 //List<Account> newAccounts = trigger.new;
 //if(trigger.isAfter){
 //  system.debug('all new inserte or up ' +newAccounts);
  
 //}
// if(trigger.isAfter && trigger.IsUpdate){
 // AccountTriggerHandler.updateVipForAllAccontacts(trigger.New, Trigger.Old, Trigger.NewMap, Trigger.oldMap);
// }
//}

       // system.debug('before insert/update trigger called');
       // AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        //system.debug('before insert update trigger end');
 // }
//}

        /*map<id, account> newAccountMap = trigger.newmap;
        map<id, account> oldAccountMap = trigger.oldmap;
        for(account eachAcc: trigger.new){
            boolean updateDesc = false;
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(trigger.isUpdate){
                Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    }
}
  /*if(trigger.isAfter && trigger.isUpdate){
    map<id, account> newAccMap = trigger.newMap;
    map<id, account> oldAccMap = trigger.oldMap;
    set<id> setOfAccIds = newAccMap.keySet();

    integer countWSUpdated = 0;
    for(ID eachAccId : trigger.newMap.keySet()){
      string oldWS = trigger.oldMap.get(eachAccId).Website;
      Account newAcc = trigger.newMap.get(eachAccId);
      if(oldWS !=newAcc.Website){
        system.debug('for account ' + newAcc.Name+ ', new WEBSITE is  '+newAcc.Website);
        countWSUpdated++;
      }
    }
  
    system.debug('# of account website updated  ' + countWSUpdated);
  }*/

   // system.debug('after update trigger of Account object ');
   // Map<id, account> accNewMap = Trigger.newMap;
   // Map<id, account> accOldMap = Trigger.oldMap;
   // for(Id eachId : accNewMap.keySet()) {
   //   system.debug('acc id = ' +eachId);
   //   Account newAcc = accNewMap.get(eachId);
   //   system.debug('new acc name = ' + newAcc.Name);

  //    Account oldAcc = accOldMap.get(eachId);
  //    system.debug('old acc name = ' + oldAcc.Name);
  //  }
  //}
//}
    //system.debug('---------START------------');
    //system.debug('trigger.isBefore = ' + trigger.isBefore);
    ///system.debug('trigger.isAfter = ' + trigger.isAfter);
    //system.debug('trigger.isInsert = ' + trigger.isInsert);
    //system.debug('trigger.isUpdate = ' + trigger.isUpdate);
   // if (Trigger.isInsert && Trigger.isBefore) {
      //  system.debug('before insert trigger fired');
    //}
   // if (Trigger.isInsert && Trigger.isAfter) {
   //     system.debug('after insert trigger fired');
   // }
   // if (Trigger.isUpdate && Trigger.isBefore) {
   //     system.debug('before update trigger fired');
   // }
  //  if (Trigger.isUpdate && Trigger.isAfter) {
   //     system.debug('after update trigger fired');
   // }
  //  system.debug('---------END------------');
//}
//if(trigger.isAfter)
   // system.debug('trigger.new after insert update = ' + trigger.new);
   //if(trigger.isAfter && trigger.isInsert){
    //system.debug('trigger.new after insert ' + trigger.new);
    //list<account> newAccounts = trigger.new;
    //system.debug('total acc inserted= ' + newAccounts.size());
    //for (account acc: newAccounts) {
       // system.debug('account id is = ' +acc.id+ ', account name is ' +acc.Name);
        
   // }
    //if(trigger.isBefore && trigger.isInsert){
    // system.debug('trigger.new before insert = ' + trigger.new);
   // }
   // if(trigger.isAfter && trigger.isInsert){
    //  system.debug('trigger.new after insert = ' + trigger.new);
   // }
  //}
   
  //if(trigger.isBefore && trigger.isUpdate){
    //system.debug('trigger.new before update = ' + trigger.new);
   // list<account> newAccounts = trigger.new;
    //for (account acc :  newAccounts) {
       // system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //}
//}
//if (trigger.isAfter && trigger.isUpdate) {
    //trigger.new -> record(s) which were responsible for firing the trigger
   // system.debug('trigger.new after update = ' + trigger.new);

    //for (account acc :  trigger.new) {
      //  system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //}
  //}
  //if(trigger.isBefore && trigger.isInsert){
   // system.debug('trigger.old before insert = ' + trigger.old);
   
     
   // }
   // if (trigger.isAfter && trigger.isInsert) {
      //trigger.new -> record(s) which were responsible for firing the trigger
     // system.debug('trigger.old after insert = ' + trigger.old);
//}
//}
//if(trigger.isBefore && trigger.isUpdate){
 //system.debug('trigger.old before update = ' + trigger.old);

  //if(trigger.isAfter && trigger.isUpdate){
  // system.debug('trigger.old after update = ' + trigger.old);
 //}
  //if(trigger.isAfter){
  //if(trigger.isUpdate){
  //  for(account oldAcc : trigger.old){
   //   system.debug('old acc id ' + oldAcc.id + ', old accname = ' + oldAcc.Name);
  //  }
   // for(account newAcc: trigger.new){
   //   system.debug('New acc id ' + newAcc.id + ', new accname = ' +newAcc.Name);
    //}
  //}
//}
//}
//if(trigger.isAfter){
 // system.debug('After trgr of Acc obj');
 // list<account> newAccounts = trigger.new;
 // system.debug('size trgr,new in after tggr ' + trigger.new.size());
 // set<Id> accIdSet = new Set<Id>();
//  for(account acc: newAccounts){
 //   accIdSet.add(acc.Id);
//  }
//  system.debug('set of acc id ' + accIdSet);
//}
//}
//map<id, account> trgNewMap = trigger.newMap;
//map<id, account> trgOldMap = trigger.oldMap;

//if(trigger.isBefore &&  trigger.isInsert){
    //system.debug('=======BEFORE INSERT=========');
    //system.debug('Before insert OLD MAP = ' + trgOldMap);
    //system.debug('Before insert NEW MAP = ' + trgNEWMap);
//}
//if(trigger.isAfter &&  trigger.isInsert){
  //  system.debug('=======AFTER INSERT=========');
  //  system.debug('AFter insert OLD MAP = ' + trgOldMap);
   // system.debug('AFter insert NEW MAP = ' + trgNEWMap);
//}

//if(trigger.isBefore &&  trigger.isUpdate){
  //  system.debug('=======BEFORE UPDATE=========');
   // system.debug('Before update OLD MAP = ' + trgOldMap);
   // system.debug('Before update NEW MAP = ' + trgNEWMap);
//}
//if(trigger.isAfter &&  trigger.isUpdate){
   // system.debug('=======AFTER UPDATE=========');
   // system.debug('AFter update OLD MAP = ' + trgOldMap);
   // system.debug('AFter update NEW MAP = ' + trgNEWMap);
//}    
//}  
//}


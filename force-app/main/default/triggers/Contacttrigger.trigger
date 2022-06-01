trigger Contacttrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }

}
       //if(trigger.isbefore && trigger.isUpdate){

       /*Map<id, Contact> oldCntRecordMap = Trigger.oldMap;
       for(Contact updatedCnt :Trigger.New){
           Contact oldContactRec = oldCntRecordMap.get(updatedCnt.Id);
      if(updatedCnt.LastName != oldContactRec.LastName){
     system.debug('Last name is Changed as  ' +oldContactRec.LastName+ ' is changed to '+updatedCnt.lastName);
       }
    }
}
}*/
//if(trigger.isBefore && trigger.isUpdate){
  //  ContactTriggerHadler.contactUpdatevalidation1(Trigger.New, Trigger.Old, Trigger.NewMap, trigger.OldMap);
  //  ContactTriggerHadler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, trigger.OldMap);
//}
//}

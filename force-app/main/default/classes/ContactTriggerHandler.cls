public with sharing class ContactTriggerHandler {
    //Prac week-7 PART1.4. When a new contact is created for an existing account then set contact other phone as account 
//phone.
    public static void updateContactPhone(List<contact> contNewRecsList, List<contact> cntTriggerOld,
                                    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        Set<id> accIdsSet = new set<id>();
        for(contact con : contNewRecsList) {
        accIdsSet.add(con.AccountId);
        
        }  
        list<Account> accRecsList = new List<Account>();
        accRecsList =[select id, name, phone  from Account where Id in: accIdsSet];
        if(!accRecsList.isEmpty()) {
            map<id, account> accRecMap = new  map<id, account>();
            for(account acc :accRecsList){
                accRecMap.put(acc.Id, acc);
            }
            for(contact con : contNewRecsList){
                if(accRecMap.containsKey(con.AccountId)){
                    con.OtherPhone = accRecMap.get(con.Accountid).Phone;
                }
              
            }

        }                           

    }



    public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//.AddError is allowed in Trigger.NEW.
//it is not allowed in trigger.old
for(contact eachContact: cntTriggerNew){
contact oldContact = cntTriggerOldMap.get(eachContact.id);
if(oldContact.LeadSource == 'Partner Referral'){
eachContact.addError('Cannot update contact where lead source is Partner Referral');
}
}

}

public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
for(contact eachContact: cntTriggerNew){
contact oldContact = cntTriggerOldMap.get(eachContact.id);
if(oldContact.LeadSource != eachContact.LeadSource){
eachContact.LeadSource.addError(system.label.ContactValidation2);
}
}
}
}

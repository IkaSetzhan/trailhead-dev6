public class ContactTriggerHadler {
    public static void  contactUpdatevalidation1(list<contact> cntTriggerNew,
                                                    list<contact> cntTriggerOld,
                                                    Map<id, contact> triggerNewMap,
                                                    map<id, contact> cntTriggerOldMap) {
     for (contact eachContact : cntTriggerNew){
        if(cntTriggerOldMap.get(eachContact.id).leadSource == 'Partner Referral'){
            eachContact.addError('Cannot update \'partner referral\' contacts');
        }
     }                                                   

    }
    public static void contactUpdateValidation2(list<contact> cntTriggerNew,
                                                list<contact> cntTriggerOld,
                                                Map<id, contact> triggerNewMap,
                                                 map<id, contact> cntTriggerOldMap) {
     for(contact eachContact : cntTriggerNew) {
         if(eachContact.LeadSource != cntTriggerOldMap.get(eachContact.id).LeadSource){
             eachContact.LeadSource.addError('Cannot update leadsource, Please USER');
         }
     }                                                
                                                 }
}

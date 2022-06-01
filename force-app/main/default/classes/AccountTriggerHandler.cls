public class AccountTriggerHandler {
    public static void updateAccountDescription(list<Account> accTriggerNew, 
                                                List<Account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap, 
                                                Map<id, account> accTriggerOldMap) {
                System.debug('inside handler method');
                for(account eachAcc: accTriggerNew){
                        boolean updateDesc = false;
                        if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                            updateDesc = true;
                        }
                        if(accTriggerOldMap != null){
                            Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                            
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
                public static void updateVipForAllAccontacts(list<Account> accTriggerNew, 
                                                            List<Account> accTriggerOld,
                                                            Map<id, account> accTriggerNewMap, 
                                                            Map<id, account> accTriggerOldMap){
 system.debug('update all contact\'s VIP field');
                                                                                                       
        set<id> setAccIDs = new set<id>();
        for(account eachAcc : accTriggerNew){
            if(eachAcc.VIP__c != accTriggeroldMap.get(eachAcc.id).VIP__c){
                setAccIDs.add(eachAcc.id);
            }
        
        list<Contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIDs];
        for(contact eachContact : listContacts){
            Account newAccount = accTriggerNewMap.get(eachContact.account.id);
            boolean newaccVIP = accTriggerNewMap.get(eachContact.Account.id).VIP__c;
            eachContact.VIP__c = newaccVIP;
        }
        if(!listContacts.isEmpty()){
            update listContacts;
        }

       
            }
        }
        //1. Whenever New Account Record is created then needs to create associated Contact Record 
//automatically.
//account name as contact lastname
//account phone as contact phone
 public static void createAccContact(list<Account> accTriggerNew) {
                                   
     list<Contact> lstCnt = new list<Contact>();
     for(account eachAcc : accTriggerNew){
        contact newCnt = new contact();
         newCnt.LastName =  eachAcc.Name;
        newCnt.Phone = eachAcc.Phone;
     newCnt.AccountId = eachAcc.Id;
     lstCnt.add(newCnt);
          

     }
     insert lstCnt;
        }
//2. Write a trigger on the Account when the Account is updated check all opportunities related to 
//the account. Update all Opportunities Stage to close lost if stage name not already set to close 
//won.
     public static void oppUpdate(list<Account> accTriggerNew, 
                                  List<Account> accTriggerOld,
                                   Map<id, account> accTriggerNewMap, 
                                  Map<id, account> accTriggerOldMap){
    set<id> accID = accTriggerOldMap.keySet();
    List<Opportunity> realatedOpp = [select id, name, StageName from Opportunity where accountId in :accID and stageName != 'Closed Won'];
         if(!realatedOpp.isEmpty()){
              for(Opportunity eachOpp :realatedOpp) {
                eachOpp.StageName = 'Closed Lost';
             }
             update realatedOpp;
         }                          
}
//3. When Account Phone field is updated then make sure its related contacts should get updated as 
//below:
//➔ Old phone from account to otherPhone in contact
//➔ new phone from account to mobilePhone in contact.

     public static void accphoneUpdate(list<Account> accTriggerNew, 
                           List<Account> accTriggerOld,
                         Map<id, account> accTriggerNewMap, 
                           Map<id, account> accTriggerOldMap){
        set<Id> accid = new set<id>();
           for(account eachAcc : accTriggerNew)   {
               if(eachAcc.Phone != accTriggerOldMap.get(eachAcc.id).Phone){
                    accid.add(eachAcc.id);
            
               }
           
       } 
         list<contact> relatedCnt = [select id, name, OtherPhone, MobilePhone, AccountId from contact where AccountId in :accid];
        for(contact eachCnt : relatedCnt){
            eachCnt.OtherPhone = accTriggerOldMap.get(eachCnt.AccountId).Phone;
           eachCnt.MobilePhone = accTriggerNewMap.get(eachCnt.AccountId).phone;

        }
        update relatedCnt;
                        }
    }

        
        

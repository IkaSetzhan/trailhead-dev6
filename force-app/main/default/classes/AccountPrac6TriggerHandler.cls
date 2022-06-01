public with sharing class AccountPrac6TriggerHandler {
    /*PART 2 – Validations 
1. When the Annual revenue field value is reduced from the previous value then show the following 
message: 
‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the record*/
    public static void validateAnnualRevenue(list<account> accTriggerNew, map<id, account> accTriggerOldMap) {
        for (account acc : accTriggerNew){
            account oldAcc = accTriggerOldMap.get(acc.Id);
            if(acc.AnnualRevenue < oldAcc.AnnualRevenue){
                acc.AnnualRevenue.addError('Annual revenue cannot be reduced');
            }
        }

    }
    /*PRACTICE WEEK-7. 1.1Whenever New Account Record is created then needs to create associated Contact Record 
automatically. 
account name as contact last name 
account phone as contact phone*/
    public static void createContact(list<Account> newList){
        List<Contact> contactsList = new list<Contact>();
        for(account acc : newlist){
            contact con = new Contact();
            con.LastName = acc.Name;
            con.Phone = acc.Phone;
            con.AccountId = acc.Id; // to set up the relationship
            contactsList.add(con);
        }
        if(!contactsList.isEmpty()){
            insert contactsList;
        }
    }
    /*PRACTICE WEEK-7. 1.2. Write a trigger on the Account when the Account is updated check all opportunities related to 
the account. Update all Opportunities Stage to close lost if stage name not already set to close won*/
public static void updateOpps(List<account> newlist){
    list<Opportunity> oppList = new list<Opportunity>();
        oppList =[select id, StageName from Opportunity where AccountId =:newlist and StageName !='Closed Won'];
        if(!oppList.isEmpty()){
            for(Opportunity opp : oppList){
                opp.StageName = 'Closed Lost';
            }
            update oppList;
        }
    }
    /*PRACTICE WEEK-7. 1.3.When Account Phone field is updated then make sure its related contacts should get updated as 
below: 
➔  Old phone from account to otherPhone in contact 
➔  new phone from account to mobilePhone in contact.*/
public static void afterUpdate(Map<Id, Account> oldMap, Map<Id, Account> newMap){
    //Iterating over the all accounts and collect only thos accounts for which phone field contact
    list<Id> accs = new List<id>();
    for(Id key : oldMap.keySet()){
        Account old = oldMap.get(key);
        Account newAcc=newMap.get(key);
        if(old.Phone!= newacc.Phone){
            accs.add(key);
        }
    }
    //fetching all the related contacts of the accs account list
    list<contact> contactList =[select OtherPhone, MobilePhone, AccountId from contact where accountId in:accs];
    if(!contactList.isEmpty()){
    for(contact c: contactList){
        //Updating rhe old phone from account otherPhone in contact
        c.OtherPhone=oldMap.get(c.AccountId).phone;
    }
    update contactList;
}
}
}


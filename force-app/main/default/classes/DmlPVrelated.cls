public class DmlPVrelated {
   public static Id createAccount(){
       account acc = new account();
       acc.name = 'bob';
       insert acc;
       return acc.Id;
   }
   public static void createContact(){
    contact c = new contact();
        c.LastName = 'kerek';
        c.AccountId = createAccount();
        c.Department = 'HR';
        c.Languages__c = 'Kazakh';
        insert c;
    }


   public static void updateOneOrphanContact() {
    account acc = [select id from account where name = 'bob' limit 1];
    contact c = [select id from contact where accountid = null limit 1];
    system.debug('c = ' +c);
    c.AccountId = acc.id;
    update c;
   }
   }
   
   
   
   
      

   
   


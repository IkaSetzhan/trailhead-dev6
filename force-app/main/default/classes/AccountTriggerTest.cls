@isTest
public class AccountTriggerTest {
    @isTest
     private static void testMethod1() {
       
            Account acc1 = new account();
            acc1.Name = 'SI Test';
            acc1.Industry = 'Energy';
            acc1.active__c = 'Yes';
    
            Account acc2 = new account();
            acc2.Name = 'UI Test';
            acc2.Industry = 'Energy';
            acc1.active__c = 'No';
    
            Account acc3 = new account();
            acc3.Name = 'PI Test';
            acc3.Industry = 'Banking';
            acc1.active__c = 'No';
    
            list<account> listAcc = new list<account>{acc1, acc2, acc3};
            insert listAcc;
            for(account acc : listAcc){
                //acc.Description = 'update in tests';
                acc.Active__c = 'Yes';
            }
            update listAcc;
            list<account> updateAcc = [select id, name, description from account Where Name ='PI Test'];
            system.assertEquals('Account is now active. Enjoy!', updateAcc[0].Description);
    }
}

public class AccountOpportunityInfoHW {
    public static void showAccounts() {
        list<Account> listAcc = [select id, name, (select id, 	CloseDate from Opportunities WHERE 	CloseDate > Today) from Account];
        system.debug(listAcc);
    }
   

}
public with sharing class DmlUpdateKhalilDemo {
    public  static void dmlUpdateDemo2() {
        Account acc = [SELECT Id, name FROM Account
        WHERE Name='Test' LIMIT 1];
Contact ct = new Contact();
ct.LastName ='Test';
ct.AccountId = acc.Id;
insert ct;
}
}
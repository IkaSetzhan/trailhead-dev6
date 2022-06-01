public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account acc = new Account();
        acc.Name ='Test';
        acc.Site = 'www.tect';
        insert acc;
        system.debug(acc); 

    }
    public static void dmlInsertdemo_cstmObj(){
    Salesforce_project__c sp = new salesforce_project__c();
    sp.project_name__c = 'teach DML to Falcons';
    sp.description__c = 'Alll 40% great learners';
    insert sp;

}
public static void dmlUpdateDemo_1(){
    Account acc = new account();
    acc.Name = 'S';
    insert acc;


    acc.Name = 'SF inc';
    update acc;
    system.debug('updated '+acc);

}
public static void dmlUpdateDemo_3(){
    account acc = [select id, name from account where name = 'Test' order by CreatedDate desc limit 1];
    acc.Name  = 'Test inc';
    update acc;
    system.debug('updated acc ' +acc);
}
public static void dmlUpdate_2(){
    Account acc = [select  name from account where name = 'Test inc' limit 1];
    system.debug('acc id is ' +acc.id);
    contact cnt = new contact();
    cnt.LastName = 'Biden';
    cnt.AccountId = acc.id;
    insert cnt;

}
public static void dmlMultipleRecordInsert_right(){
    list<account> listAcc = new list<account>();
    account acc1 = new account();
    acc1.name = 'bulk acc 1';
    listAcc.add(acc1);

    account acc2 = new account();
    acc2.name = 'buil acc 2';
    listAcc.add(acc2);

    account acc3 = new account();
    acc3.name = 'bulk acc 3';
    listAcc.add(acc3);
    insert listAcc;
}
public static void dmlMultipleRecordInsert1_right(){
    list<account> listAccount = new list<account>();
    account acc = new account();
    acc.Name = 'Test -10 apr v';
    acc.AccountNumber = 'ACSI -1';
    acc.Active__c = 'yes';
    system.debug('before saving acc = ' + acc);
    listAccount.add(acc);
    for(integer i = 1; i<6; i++){
        account acc2 = new account();
        acc2.Name = 'test 10 apr v ' +i;
        acc2.AccountNumber = 'ACSI-2' +i;
        acc2.Active__c = 'Yes';
        listAccount.add(acc2);

    }
    system.debug('size of list ' + listAccount.size());
    if(!listAccount.isEmpty()) insert listAccount;
}
}
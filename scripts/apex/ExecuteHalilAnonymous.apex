Account acc1 = new Account();
acc1.Name = 'SI TEST';
acc1.Industry = 'Energy';
acc1.Active__c = 'NO';

Account acc2 = new Account();
acc2.Name = 'UI TEST';
acc2.Industry = 'Energy';
acc2.Active__c = 'YES';

Account acc12x = new Account();
Account acc12y = new Account();

List<Account> listAcc = new List<Account>{acc1, acc2, acc12x, acc12y};

list<Database.SaveResult> results = Database.insert(listAcc, false);

for(Database.SaveResult eachResult : results){
    if(eachResult.isSuccess()){
        system.debug('acc successfuly inserted, acc id is: ' + eachResult.getId());
    }
    else{
        system.System.debug('errors '+ eachResult.getErrors());
    }
}
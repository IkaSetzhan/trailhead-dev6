list<string> newList = new List<String>();   // empty list for prepare parameter data
//empty list to get the returned value
//for(integer i = 0; i<5; i++){
   // newList.add('acc1'+i);
     
newList.add('papa');
newList.add('mama');
newList.add('bro');
newList.add('sistr');
list<account> newAcc = AccountHandlerInfoHW.insertNewAccount(newList);
system.debug(newAcc);
AccountManagerHw.updateAccounts(newAcc);



  
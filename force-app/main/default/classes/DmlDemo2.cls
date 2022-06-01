public  class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right(){
        List<account> listAcc = [select id, name from account limit 10];
        list<account> updateAccounts = new list<account>();
        for(account acc: listAcc){
            acc.name += 'via B.0';
            acc.Description = 'Update bulk DML';
            updateAccounts.add(acc);
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }
      

    }
}

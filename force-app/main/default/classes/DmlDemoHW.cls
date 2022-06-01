public  class DmlDemoHW {
    public  DmlDemoHW() {
        system.debug('Welcome to the world of SOQL. Please enter the key character to search.');

    }
    public void dmlInsert(String keychar){
        string likeVar = '%' + keychar + '%';
        list<account> listAcc = [select id from Account WHERE Name like : likeVar];
        if(listAcc.size()> 0){
            list<contact> listCnt = new list<contact>();
            for(Account objAccount : listAcc){
                contact objContact = new contact();
                objContact.LastName = objAccount.Name;
                objContact.AccountId = objAccount.Id;
                listCnt.add(objContact);

            }
            if(listCnt.size()>0){
                insert listCnt;
            }
            
      
        }
    }
}


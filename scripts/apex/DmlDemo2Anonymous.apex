list<case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'This is a bug';
    c.Description = 'resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
    
}
insert listCase;

List<case> updatecase = [select id, Status from case];
for (case c : updatecase) {
    c.Status = 'Working';
}
update updateCase;

Delete [Select Id from Case Where CreatedDate = Today];




List<Account> listAcc = [select id, name, website from account order by CreatedDate limit 10];
    
       list<account> updateAccounts = new list<account>();

        integer counter = 0;
       for (account acc : listAcc) {
           
           if(counter < 5){
                acc.Website = 'newwebsite.com';
           } else {
               acc.name = acc.name + ' v2';
           }
           
           updateAccounts.add(acc);
           counter++;
       }
       if(!updateAccounts.isEmpty()){
           update updateAccounts;
       }




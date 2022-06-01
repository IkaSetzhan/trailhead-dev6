public class AccountHandlerInfoHW {
    /*1. Create an Apex class that inserts new accounts named after an incoming parameter as list of string. If the accounts are successfully inserted. the method should return the List of account records. If a parameter is blank than we should show the error message from class and the method should return null.
The Apex class must be called AccountHandlerInfo and be in public scope
The Apex class must have a public static method called insertNewAccount
The method must accept an incoming List of string as a parameter, which mill be used to create the Account names 
The list of accounts will be created based on the list of string, that means If we are passing the list of 5 strings clan 5 account records will be created 
The method must insert the accounts into the system and then return the records*/
    public static list<account> insertNewAccount(list<string> str) {
  list<account> accInsert = new list<account>(); // insert for account
list<account> accReturn = new list<account>();  //for return
if(!str.isEmpty()){
   for (string abc : str) {
       Account abz = new account();
       abz.Name = abc;
       accInsert.add(abz);
   }
   if (!accInsert.isEmpty()) {
       insert accInsert; //DML
       accReturn = accInsert;
       for(account d : accInsert){
        system.debug(d.name + ' ' +d.id+ ' '+d.Phone);
       }
     }
    }
if (str.isEmpty()) {
    system.debug('list is empty ');
    accReturn = null;
}
return accReturn;
    }
}

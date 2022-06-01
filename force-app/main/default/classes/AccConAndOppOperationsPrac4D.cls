public with sharing class AccConAndOppOperationsPrac4D {
//1. Write the logic to fetch and return all the accounts. Include account name, annual revenue, 
//type, and source of account.
public static List<Account> fetchAllAccounts() {
    List<account> accList = new List<account>();
    accList = [Select Id, Name, AnnualRevenue, Type from Account];
    return accList;
    }
    //2. Find all the opportunities which has Lead Source as 'Web' and Stage as 'Closed Lost'. Make it 
//dynamic so that it works for other stages and Lead sources as well.
public static void fetchOpportunities(String oppStageName, String leadsrc){
    List<Opportunity> oppRetrivedList = new List<Opportunity>();
    oppRetrivedList = [select Name, amount from Opportunity Where Stagename = : oppStageName and LeadSource = :leadsrc];
    system.System.debug('oppretrivedList  ' + oppRetrivedList);
}
//3. Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the 
//Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity 
//record should be printed in different line.
public static void printOppAndAccDetails(){
    List<Account> accountWithOppList = new List<Account>();
    accountWithOppList = [select Name, AnnualRevenue, (select Name, Amount from Opportunities Where StageName = 'Closed Won') 
    from Account Where Type = 'Customer - Direct'];
     for(Account acc : accountWithOppList){
         System.debug('Account name ' +acc.Name + '  and its annual revenue is-->  ' +acc.AnnualRevenue);
         for(Opportunity opp: acc.Opportunities){
             system.debug('Opportunity Name and amount --> ' +opp.Name + ' '+opp.Amount);
         }
        }
    }
         //4. Write a method which should return the account record after creating it. Take Name, Annual 
//Revenue, Type as input parameters and populate the values in account record. If Name is not 
//provided, then do not create the account and show a message like Account without name 
//cannot be created.
    public static Account createAccount(String name, Double annualRev, String type){
        Account acc = new Account();
        if (name != null && name != ''){
            acc.Name = name;
            acc.Type = type;
            acc.AnnualRevenue = annualRev;
            Insert acc;
        }else{
            system.debug('Account without name cannot be created');
        }
        return acc;
    }
    //1. Practice week 5. SOQL, DML TRGRS.Prepare a method which returns the sum of all the closed won opportunities Amount present in 
//the org.
public static Decimal sumAmount(){
    Decimal sum =0;
    List<Opportunity> newList = [select id, Name, Amount from Opportunity Where StageName = 'Closed Won' and Amount!= null];
      for(Opportunity opp : newList){
    sum=sum+opp.Amount;

      }
return sum;
}
//2. Prepare a method which will return all the Accounts for which at least a closed Won 
//Opportunity is present. Make it dynamic if we want to bring account for other opportunity 
//stageNames.
public static List<Account> closedWon(String stgName){
    List<Account> allClosedWon = [Select Id, Name from Account Where Id In (Select AccountId from opportunity Where StageName = : stgName)];
    system.debug('list of account ' +allClosedWon);
    return allClosedWon;

  
}
//3. Prepare a method which will return all the Accounts for which at least a contact is present
   public static List<Account> returnAll(){
       List<Account> allAcc = [Select id, Name from Account where id IN (Select AccountId from contact)];
       system.debug('present acc ' + allAcc);
       return allAcc;


   }
   //1. Take account Id as input parameter and create a new contact for the provided account’s Id. 
// Populate Contact last name as same as Account’s Name.
public static void createContact(Id accountID){
    Account acc = [select id, name from Account where id = : accountID];
    contact newCnt = new Contact();
    newCnt.LastName = acc.Name;
    newCnt.AccountId = acc.Id;
    insert newCnt;
    System.debug(newCnt);
  
}
//2. Update the description field of top 10 opportunities as "This is one of the top 10 opportunity. 
//Please work on this properly “.
public static void updateDesc(){
 list<opportunity> topOpp = [select id, description from Opportunity Order by  Amount desc nulls last limit 10];
 system.debug(topOpp);
 for(opportunity opp : topOpp){
     opp.description = 'This is one of the top 10 opportunity Please work on this properly';
    
 }
 update topOpp;

}
//3. Write a logic to create and return n number of opportunities for a particular AccountId. 
//AccountId and n will be passed as parameters in the method. 
//Populate opportunity fields as follows:
//Close date as 3 years from today 
//Stage name as Prospecting 
//Opportunity amount as Account’s annual revenue divided by n 
//and Opportunity name same as Account name 
//For Ex: if n=2, Then two new opportunities If n=0, Print the message as “Please tell us how many 
//opportunities needs to be created”
public static list<opportunity> numberOpp(integer n, ID accID){
    List<opportunity> oppList = new List<opportunity>();
    
    Account acc = [select id, AnnualRevenue, Name from Account where ID =: accID];
    if(n>0){
        for (Integer i = 0; i < n; i++) {
            Opportunity oppNew = new Opportunity();
            oppNew.CloseDate= Date.today().addYears(3);
            oppNew.StageName='Prospecting';
            if(acc.AnnualRevenue != null){
                oppNew.Amount = acc.AnnualRevenue/n;
            }
            
           
            oppNew.Name = acc.Name;
            oppNew.AccountId = accID;
            oppList.add(oppNew);
 
            
        }
        
        insert oppList;
        
    }else{
        system.debug('Please tell us how many opportunities needs to be created');
       
      
    }  
    return oppList; 
      
  }
}
     



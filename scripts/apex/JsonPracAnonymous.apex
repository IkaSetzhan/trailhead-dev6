//1. Print the JSON format of any 5 accounts from the Salesforce org. Fetch Id, Name, 
//AnnualRevenue and Type field from Account.
List<Account> listAcc = [Select id, name, AnnualRevenue, Type FROM Account limit 5];
string accJson = JSON.serialize(listAcc);
system.debug(accJson);

//2. Print the JSON format of account and its related contacts for 'United Oil & Gas Corp.' account 
//from the Salesforce org. Fetch Id, Name, AnnualRevenue and Type field from Account Object
//And Fetch Id, First Name and Last Name from the related contacts.
List<Account> listAccCont = [Select id, name, AnnualRevenue, Type, (Select id, firstName, LastName from Contacts) From Account Where name = 'United Oil & Gas Corp.'];
string accContJson = JSON.serializePretty(listAccCont);
system.debug(accContJson);
//3. Print the JSON format of account and its related opportunities for 'United Oil & Gas Corp.' 
//account from the Salesforce org. Fetch Id, Name, AnnualRevenue and Type field from Account 
//Object And Fetch Id, StageName and Amount from the related Opportunities
List<Account> lstAcc = [select id, Name, AnnualRevenue, Type, (select id, StageName, Amount from opportunities) from Account where name ='United Oil & Gas Corp.'];
String accOppJson = Json.serializePretty(lstAcc);
system.debug(accOppJson);
//4. Create a number custom field on Customer__c object and name it as ‘Number of Online 
//Payments’. Now write a trigger to achieve the following functionality:
//Number of Online Payments – It should show the number of related online payments made for a
//particular customer. This value should update as soon as any of the following event occurs:
//a. A new online payment is added.
//b. An online payment is updated to cash, or a cash payment is updated to online.
//c. An online payment is deleted.
//d. An online payment is un-deleted.
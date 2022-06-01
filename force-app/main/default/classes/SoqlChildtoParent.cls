public  class SoqlChildtoParent {
    public static void childToParent_Soql() {
        list<contact> listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];

        for(contact eachContact : listCnt){
            string accName = eachContact.Account.Name;
            system.debug('contact name is ' + eachContact.name + ' its acc is ' +accName);
        }

    }


public static void sampleSoql4(){
    list<account> accountWitchOppList = [select name, annualRevenue, (select name, amount from 
    opportunities where stagename = 'Closed Won') from  account where type = 'Customer - Direct'];
for (account eachAcc: accountWitchOppList ) {
    system.debug('acc name is ' + eachAcc.name + ', annual reneue is' + eachAcc.annualRevenue);
    list<Opportunity> eachAccOpps = eachAcc.Opportunities;
    for (Opportunity opp: eachAccOpps){
        system.debug('opp name ' + opp.Name+ ', opp amount' + opp.Amount);
    }
    system.debug('--------');
}

}
}

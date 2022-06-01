Map<Id, Country_Code__c> mapCC = Country_Code__c.getAll();
System.debug('Map of country code = ' +mapCC);
for (Id eachCountry : mapCC.keySet()) {
    System.debug('Country = ' +eachCountry+ ' , ' +mapCC.get(eachCountry).country_code__c);
}
for(Id eachCountry : mapCC.keySet()){
    system.debug('Country= ' + eachCountry+ ' ,code= ' +mapCC.get);
   
}
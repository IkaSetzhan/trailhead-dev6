Map<String, Country_Code__c> mapCC = Country_Code__c.getAll();
System.debug('Map of country code = ' +mapCC);
for (String eachCountry : mapCC.keySet()) {
    System.debug('Country = ' +eachCountry+ ' , ' +mapCC.get(eachCountry).country_code__c);
}
//for(String eachCountry : mapCC.keySet()){
  //  system.debug('Country= ' + eachCountry+ ' ,code= ' +mapCC.get);
   
//}
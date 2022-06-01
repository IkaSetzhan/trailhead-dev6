public  class ValidateAddress {
    public void validateHomeAddress () {
        string houseName = 'secret';
        string  streetName = 'Golden apple'; 
         string cityName = 'Katy';
        String stateName = 'Texas';
        String stateIso = 'US-TX';
        String countryName = 'Harris';
       String  countryIsoCode = 'USA';
      
       system.debug('My House is: ' + houseName);
       system.debug('My street name is: ' + streetName);
       system.debug('my city name is '+ cityName );
       system.debug('My state name is ' + stateName);
       system.debug('My state ISO code is ' + stateIso);
       system.debug('My country name is ' + countryName);
       system.debug('My country ISO is ' + countryIsoCode);
       
       integer numberofchrtr = streetName.length();
       system.debug('number of characters in the street name ' + numberofchrtr);
       Boolean isTrue = streetName.contains(houseName);
       system.debug('Check if the street name contains house name in it or not?==> ' +isTrue);
       Boolean isStateIso = streetName.contains(stateIso);
       system.debug('find if the street name contains the state iso code in it?==> ' +isStateIso);

       String upper1 = stateIso.toUpperCase();
       String upper2 = countryIsoCode.toUpperCase();
       String upper3 =  countryName.toUpperCase();
       String lower1 = cityName.toLowerCase();
       String lower2 = stateName.toLowerCase();
       System.debug('State ISO code to upper case ' + upper1);
       System.debug('Country iso code to upper case ' + upper2);
       System.debug('Country name upper case ' + upper3 );
       System.debug('City name to lowercase ' + lower1 );
       System.debug('State name to lowercase ' + lower2 );



    }
}
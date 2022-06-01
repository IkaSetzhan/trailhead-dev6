public  class ValidateAddHwork {
    public void validateHomeAddress1() {

        string  myName =   'Indira Setzhan';
       string numberOfFam =  '5';
       string  houseName =  'Golden';
       string  houseNumber =   '2088';
       string  streetName =  'Oak park';
       string  cityName =  'Harrison';
       string  stateName =  'TX';
       string  stateIsoCode = '0505';
       string  countryName = 'Harris';
       
     
    //i. Number of characters in the street name. 
    integer strNamelength = streetName.length();
    system.debug('Number of characters in the street name ' +strNamelength);
    // ii. Check if the street name contains house name in it or not. 
    Boolean isStreetNameCont = streetName.contains(houseName);
    system.debug('is the street name contains house name? ' +isStreetNameCont);
        //iii. Find if the street name contains the state iso code in it 
        boolean stateCont = streetName.contains(stateIsoCode);
        system.debug('the street name contains the state iso code ' +stateCont);
        // iv. Convert the state iso code, country iso code, country name to upper case and 
        //city name, stateName. 
        stateIsoCode = stateIsoCode.toUpperCase();
        countryName = countryName.toUpperCase();
        system.debug(stateIsoCode + ', ' +countryName);


        string lowerStateName = stateName.toLowerCase();
        cityName = cityName.toLowerCase();

        system.debug('stateName lower case ' + lowerStateName +' ' +'city name l '+ cityName);
        //v. Concatenate the house name, street name and store it in a variable.
        string halfAddr = houseName + ', ' +streetName;
        system.debug('My house and street name is ' +halfAddr);

    }
}

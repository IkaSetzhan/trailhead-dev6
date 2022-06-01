//1. Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ 
//for any 5 currency ISO codes. Like below: 
//a. AUD => 0.73 
//b. CAD => 0.78 
//c. EUR => 1.13 
//d. NZD => 0.68 
//e. INR => 0.013 
Map<string, Decimal> currISOCodeAndExchangeRateMap = new Map<string,Decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
system.debug(currISOCodeAndExchangeRateMap);
//2. Fetch the currency conversion rate for any one currency ISO code and print it. 
Decimal inrToUsdCnvrsnRate = currISOCodeAndExchangeRateMap.get('INR');
system.debug('INR to USD conersion Rate  ' + inrToUsdCnvrsnRate);
//3. Check if the above Map have conversion rate for SAD ISO code. 
Boolean isContainsSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
system.debug('Is Conversion rate for SAD available  ' + isContainsSAD);
//4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the 
//conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: 
//EUR – In one variable AUD, CAD, NZD, and INR – In another variable.
set<string> moreThanOrEqualUSDValueCodesSet = new set<string>();
set<string> lessThanUSDValueCodesSet = new set<string>();
for(string isoCode : currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(isoCode) >=1){
        moreThanOrEqualUSDValueCodesSet.add(isoCode);

    }else{
        lessThanUSDValueCodesSet.add(isoCode);
    }
}
system.debug('all currency ISO codes which have higher than or equal USD ' + moreThanOrEqualUSDValueCodesSet);
system.debug('all currency ISO codes which have lower Value than  USD ' + lessThanUSDValueCodesSet);
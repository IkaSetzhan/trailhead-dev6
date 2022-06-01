map<string, string> mapCntCurrency = new map<string, string>();
//USA --> Dollar
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country currency = ' + mapCntCurrency);

string indiaCurrency = mapCntCurrency.get('India');
string country = 'Turkey';
string Turkeycurrency = mapCntCurrency.get(country);

system.debug('Idia Currency =  ' + indiaCurrency);
system.debug('turkey currency ' + Turkeycurrency);



list<string> currencyList = mapCntCurrency.values();
system.debug('currency  ' + currencyList);

Set<string> countrySet = mapCntCurrency.keySet();
system.debug('countries in map ' + countrySet);

Set<string> countriesSet = mapCntCurrency.keySet();
system.debug('countries in map ' + countriesSet);
For(string eachKey: countriesSet){
    string printString = 'country is ' +eachKey;
    system.debug(printString);
    string eachCurrency = mapCntCurrency.get(eachKey);
    system.debug(eachKey);
}
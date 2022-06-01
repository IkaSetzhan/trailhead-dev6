public class Address {
    public void homeAddress() {
        string Name = 'Ika';
        Integer TotalNumberFam = 5;
        String HouseName = 'goldenHouse';
        integer HouseNumber = 8888;
        String StreetName = 'Rudin'; 
        String cityName = 'katy';
        String Statename = 'Texas';
        String CountyName = 'Harris';
        String IsoCode = 'TX';
       String ZipCode = '77450';
        Boolean isyourcurrentHome = true;
        system.debug('My name is ' + Name);
        system.debug('My address ' + HouseNumber+ ''+ HouseName);
        system.debug(cityName+ '' + Statename + '' + IsoCode + ''+ ZipCode);
        system.debug('My current address:' + isyourcurrentHome);

    }
}

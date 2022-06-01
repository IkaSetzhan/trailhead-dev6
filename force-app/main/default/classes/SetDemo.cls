public  class SetDemo {
    public static void cityset() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('tokyo');
        
        system.debug('cities  ' + cities);
    }
    public static void randomInteger(){
        Set<Integer> setInteger = new Set<Integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(30);
        setInteger.add(15);
        system.debug('set of random ' + setInteger);



    }
    public static Set<Integer> setFromList(list<integer> intList){
        set<integer> intset = new Set<integer>();
        intSet.addALL(intList);
        return intSet;

    }
    public static set<string> capitalizeSet(set<string> setString){
        set<string> upperCaseSet = new set<string>();
      

        for (string eachString : setString) {
           
            string tempStr = eachString.toUpperCase();
            upperCaseSet.add(tempStr);
            
        }
        return  upperCaseSet;
    }
}
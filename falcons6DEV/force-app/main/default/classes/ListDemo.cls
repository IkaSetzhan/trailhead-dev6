public class ListDemo {
    public static string candidatesList(integer index) {
        List<string> listCandidates = new List<string>();
        listCandidates.add('Ika');
        listCandidates.add('Elenora');
        listCandidates.add('Yerlik');
        listCandidates.add('Sandu');
        string valueAt3 = listCandidates[3];
        system.debug('value at index 3 ' +valueAt3);
        system.debug('candidates are ' +listCandidates );
        string returnString = '';
        if (index >=0&& index < listCandidates.size()) {  
        returnString = listCandidates[index];
        } else {
            returnString = 'No such value found';
        }
        return returnString; 
    }

    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        //get index 3 value
        integer index3value = listInteger.get(3);
        integer index3value2 = listInteger[3];
        system.debug('list of random integers = ' + listInteger);
        system.debug('value at index 3 is ' +  index3value2);
    }
    public  void candidatesList2() {
        List<string> listCandidates = new List<string>();
        listCandidates.add('Ika');
        listCandidates.add('Elenora');
        listCandidates.add('Yerlik');
        listCandidates.add('Sandu');
        system.debug('candidates are ' +listCandidates );
}

public static void allCats(){

    Cat falconsCat = new Cat('fluffykins', 'white');
    Cat ikaCat = new Cat('simba', 'black');
    Cat yerlikCat = new Cat('smoky', 'gray');
    List<Cat> cats = new list<Cat>();
    cats.add(falconsCat);
    cats.add(ikaCat);
    cats.add(yerlikCat);
    system.debug('all cats are ' + cats);
}
//public static void allCars(){
    //Car lm = new car();
   // lm.carColor = 'red';
    //car bm = new car();
   // bm.carColor = 'gray';
   // list<car> cars = new list<car>();

public static void iterateIntegerList(){
    List<integer> listInteger = new list<integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(21);
    listInteger.add(15);
    listInteger.add(15);
    listInteger.add(16);
    for (integer eachInteger  : listInteger) {
        system.debug(eachInteger);
        
    }
}
}
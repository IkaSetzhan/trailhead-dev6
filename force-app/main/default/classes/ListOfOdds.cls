public  class ListOfOdds {
    public ListOfOdds() {
        system.debug('Welcome');

    }
    public void getNumber(integer num){
        List<integer> oddList = new List<integer>();
        for (Integer i = 1; i<=num; i+=2){
            oddList.add(i);
        }
        system.debug('entered value');
        system.debug('the odd numbersare: ' + oddlist);
    }
}
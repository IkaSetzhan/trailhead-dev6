/*2. Write an apex class called the ListOfOdds, 
that will have a constructor which will print the welcome message. 
Create the method call it from anonymous apex to enter a number as the paramter. 
Get the odd numbers from 1 to entered number and add those numbers in list and print that list.
E.g. -> Enter the number ==> 15
List will have => 1, 3, 5, 7, 9, 11, 13, 15*/

public  class ListOfOdds {
    public  ListOfOdds() {
        system.debug('Welcome msge');

    }
    public void oddNumbers(integer num){
        list<integer> listNum = new list<integer>();
        for (Integer i = 1; i <num; i++){
            if(math.mod(i,2) ==1) {
                listNum.add(i);
            }   
            }
        system.debug(listNum);
    }
}

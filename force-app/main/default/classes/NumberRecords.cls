/*2. Create the class called the NumberRecords,
which will have the list of numbers which will be added
 from asynchronous apex file and we need to pass one number
 to check if that number exist in that list.
E.g. -> List<Integer> => [6, 8, 4, 12, 9, 56, 67]
        Number => 12
        Output: Number exists in the list*/


public  class NumberRecords {
    public static void existNumber() {
        List<Integer> numberList = new List<Integer>{5,3,8,9,12};
        numberList.contains(12);
        system.debug('all number: ' + numberList);
        system.debug( 'if number exist on the list ==> ' + numberList.contains(12));
    }
}
public class ForLoopPrac {
    public void iteateIntList() {
        list<integer> myIntList = new List<Integer>();
        for(integer i =0; i<=100; i++){
            myIntList.add(i);
        }
        system.debug('My list value is ' + myIntList);
 }
 public static  integer add(List<integer> myIntList){
     Integer result =0;
     for(integer i: myIntList){
         result+=i;

     }
     return result;
      }
}

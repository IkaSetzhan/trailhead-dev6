public class DummyApex {
   public static void increaseRevenue(list<account> accRecords){
       for(Account recAcc : accRecords){
           recAcc.AnnualRevenue *=0.9;
       }
       update accRecords;
   }
}

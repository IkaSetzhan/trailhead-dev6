@isTest
public  class OperationHelperTest {
    @isTest
    public static void largestOutOfTwoNumbersTest() {
        OperationsHelper lrg = new OperationsHelper();
        decimal dc=lrg.largestOutOfTwoNumbers(7.7, 1.7);
        system.assertEquals(7.7, dc);
        decimal dc1=lrg.largestOutOfTwoNumbers(1.1,1.2);
        system.assertEquals(1.2, dc1);
    }
    @isTest
    public static void smallestOutOfThreeNumbersTest(){
        OperationsHelper oph = new OperationsHelper();
        decimal dec = oph.smallestOutOfThreeNumbers(4.8, 5.1, 6.5);
        system.assertEquals(4.8, dec);
        decimal dec1 = oph.smallestOutOfThreeNumbers(4.8, 3.1, 5.5);
        system.assertEquals(3.1, dec1);
        decimal dec2 = oph.smallestOutOfThreeNumbers(4.8, 5.1, 1.5);
        system.assertEquals(1.5, dec2);
    }
    @isTest
    public static void sumofPositiveIntegersTest(){
        OperationsHelper sumTest = new OperationsHelper();
        integer sum =sumTest.sumofPositiveIntegers(-2);
        system.assertEquals(null, sum);
        integer sum1 = sumTest.sumofPositiveIntegers(3);
        system.assertEquals(6, sum1);
    }
    @isTest
    public static void sumofPositiveIntegersTest1(){
        OperationsHelper sumTest1 = new OperationsHelper();
        Integer sumN = sumTest1.sumofPositiveIntegers(1, 5);
        system.assertEquals(15, sumN);

    }
    @isTest
    public static void sumofListValuesTest(){
        list<Decimal> listDec = new list<Decimal>();
        listDec.add(5.5);
        listDec.add(6.7);
        OperationsHelper operH = new OperationsHelper();
       decimal dec = operH.sumofListValues(listDec);
       system.assertEquals(12.2, dec);
       list<Decimal> lstD = new List<Decimal>();
       decimal d = operH.sumofListValues(lstD);
       system.assertEquals(null, d );
  
    }
    @isTest
    public static void averageOfListValuesTest(){
        list<Decimal> listDec = new List<Decimal>();
        listDec.add(2.2);
        listDec.add(6.5);
        OperationsHelper val =new OperationsHelper();
        Decimal avg = val.averageOfListValues(listDec);
        system.assertEquals(4.35, avg);
    }
    @isTest
    public static void highestOfListValuesTest(){
        List<Decimal> listdec = new List<Decimal>();
        listdec.add(2.2);
        listdec.add(7.7);
        listdec.add(3.2);
        listdec.add(5.2);
        OperationsHelper high = new OperationsHelper();
        decimal big = high.highestOfListValues(listdec);
        system.assertEquals(7.7, big);
        list<decimal> emptList = new list<Decimal>();
        decimal emt = high.highestOfListValues(emptList);
        system.assertEquals(null, emt);

    }
    @isTest
    public static void lowestOfListValuestest(){
        list<Decimal> lstDec = new List<Decimal>();
        lstDec.add(2.2);
        lstDec.add(1.2);
        lstDec.add(3.2);
        OperationsHelper low = new OperationsHelper();
        decimal lowest = low.lowestOfListValues(lstDec);
        system.assertEquals(1.2, lowest);
    }
    @isTest
    public static void reverseOrderPrintTest(){
        list<Object> lstObj = new List<Object>();
        lstObj.add(3);
        lstObj.add(5);
        lstObj.add(7);
        OperationsHelper reverse = new OperationsHelper();
        reverse.reverseOrderPrint(lstObj);
        system.assertEquals(7, lstObj[0]);

    }
    
}

@isTest
    public class Calculatortest {
        @isTest
        private static void testMessage(){
           
            Calculator.welcomeMessage();
            Calculator obj = new Calculator();
           Calculator.printNewMessage('this is from test class');
          }
          @isTest
          public static void printTestNewMsge2(){
              Calculator obj1 = new Calculator();
            Calculator.printNewMessage2('Print test msge', date.today());
           
         
           
          }
        @isTest
        private static void addTest(){
            integer i = 10;
            integer j =15;
            integer calAdd = Calculator.add(i,j);
            system.assertEquals(25, calAdd);
        }
        @isTest

        private static void addTest2(){
            integer calcAdd = Calculator.add(10, 15, 20);
            system.assertEquals(45, calcAdd);
        }
        @isTest
        public static void addTest3(){
            list<integer> listInt = new List<integer>{15,15,15};
            integer calcAdd = Calculator.add(listInt);
            system.assertEquals(45, calcAdd);
        }
    }


@isTest
public  class DmlDemoTest {
    @istest
    private static void  dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.Size());
        system.assertEquals('Test', listAcc[0].Name);
    }
    @isTest
   private static void dmlDemoTest2(){
        Account acc = new account();
        acc.Name = 'Test inc';
        insert acc;
    DmlDemo.dmlUpdate_2();
    list<contact> cnt = [select id, name from contact];
    system.assertEquals(1, cnt.size());
    system.assertEquals('Biden', cnt[0].Name);
  
    }
    

    }


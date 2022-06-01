@isTest
public class DmlUpdateKalilDemoTest {
    @isTest
    public  static void DmlUDemoTest2() {
        account   acc = new account();
        acc.Name ='Test';
        insert acc;
        DmlUpdateKhalilDemo.dmlUpdateDemo2();
        list<contact> listcontact =[select id, lastName from contact];
        system.assertEquals(2, listcontact.size());
        system.debug(listContact[0].LastName);
        System.assertEquals('Test', listContact[0].LastName);
    }
}
    


@isTest
public class  DummyTest {
    public static void increaseReveue(){
    list<account> listacc = new list<account>();
    account varAccount = new account(name = 'test records', AnnualRevenue =100);
    listacc.add(varAccount);
    insert listacc;
    test.startTest();
    DummyApex.increaseRevenue(listacc);
    varAccount = [select AnnualRevenue from account];
    system.assertEquals(90, varAccount.AnnualRevenue);
}
    
}

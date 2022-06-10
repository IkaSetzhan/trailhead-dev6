public class JsonformatMethodHW {
   public List<Account> lstAcc {get;set;}
   public List<Contact> lstCont {get;set;}
   public static void retrievedata(){
       JsonformatMethodHW newformat = new JsonformatMethodHW ();
       list<Account> lstaccount = [SELECT id, name from account];
       List<Contact> lstContact = [SELECT id, name from Contact];
       newformat.lstAcc = lstaccount;
       newformat.lstCont = lstContact;
       string JsonObj = json.serialize(newformat);
        System.debug(JsonObj);
   }
}

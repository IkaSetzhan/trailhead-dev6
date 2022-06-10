public with sharing class PaymentTriggerHandler {
  public static void createPayment(list<Payment__c> trgrNew){
      Set<Id> setId = new set<id>();
    for(Payment__c pay : trgrNew){  
        if(pay.mode__c == 'Online'){
            setId.add(pay.Customer__c); //parent ID
        }
        
      
      
    } 
    system.debug(setId);
    List<Customer__c> listCustomer = [SELECT Number_of_Online_Payments__c,(SELECT id, Mode__c, customer__c  FROM Payments__r 
                                        WHERE Mode__c = 'Online')FROM Customer__c WHERE id in:setId]; //parent Info
     for(Customer__c eachCustomer : listCustomer) {
         eachCustomer.Number_of_Online_Payments__c = eachCustomer.Payments__r.size();
     }                                  
     update listCustomer;
  }
  //b. An online payment is updated to cash, or a cash payment is updated to online.
  public static void updatePayment(List<Payment__c> trgrNew, Map<Id, Payment__c> trgrOldMap){
      Set<Id> setId = new Set<Id>();
      for(Payment__c pay : trgrNew){
          if(pay.Mode__c !=trgrOldMap.get(pay.Id).Mode__c) {
              setId.add(pay.Customer__c);
          }


      }
      List<Customer__c> listCustomer = [SELECT Number_of_Online_Payments__c,(SELECT id, Mode__c, customer__c  FROM Payments__r 
      WHERE Mode__c = 'Online')FROM Customer__c WHERE id in:setId];
      for(Customer__c eachCustomer : listCustomer) {
        eachCustomer.Number_of_Online_Payments__c = eachCustomer.Payments__r.size();
    } 
    update listCustomer;
  }
    public static void deletePayment(List<Payment__c>  trgrOld){
        Set<Id> setId = new Set<Id>();
        for(Payment__c pay : trgrOld){
        setId.add(pay.customer__c);
        }
        List<Customer__c> listCustomer = [SELECT Number_of_Online_Payments__c,(SELECT id, Mode__c, customer__c  FROM Payments__r 
        WHERE Mode__c = 'Online')FROM Customer__c WHERE id in:setId];
        for(Customer__c eachCustomer : listCustomer) {
          eachCustomer.Number_of_Online_Payments__c = eachCustomer.Payments__r.size();

    }
     update listCustomer;

}
public static void undeletePayment(List<Payment__c>  trgrNew){
    Set<Id> setId = new Set<Id>();
    for(Payment__c pay : trgrNew){
    setId.add(pay.customer__c);
    }
    List<Customer__c> listCustomer = [SELECT Number_of_Online_Payments__c,(SELECT id, Mode__c, customer__c  FROM Payments__r 
    WHERE Mode__c = 'Online')FROM Customer__c WHERE id in:setId];
    for(Customer__c eachCustomer : listCustomer) {
      eachCustomer.Number_of_Online_Payments__c = eachCustomer.Payments__r.size();
}
update listCustomer;
}
}

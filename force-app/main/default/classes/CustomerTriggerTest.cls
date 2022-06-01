@isTest
public with sharing class CustomerTriggerTest {
    @TestSetup
    static void makeData(){
        list<Customer__c> customersList = new list<Customer__c>();
        for(Integer i=0; i<200; i++){
            customer__c c = new Customer__c();
            if(i<100){

            }else{
                c.active__c = true;
            }
            customersList.add(c);
        }
        insert customersList;
        list<Payment__c> paymentsList = new List<Payment__c();
        for(customer__c c : customersList){
            for(integer j =0; j<10; j++){
                Payment__c p = new Payment__c();
                p.Customer__c = c.id;
                if(j<5){
                    p.mode__c = 'Cash';
                }else{
                    p.mode__c = 'Online';
                }
                paymentsList.add(p);
            }
           
        }
        insert paymentsList;
    }
        @isTest
        static void deleteCustomerTest(){
            list<customer__c> customersList = new List<Customer__c>();
            customersList = [select id from Customer__c];
            test.startTest();
            Delete customersList;
            Test.stopTest();
            list<Payment__c>  onlines = new List<Payment__c>();
            onlines = [select id from payment__c where Mode__c = 'Online'];
            system.assertEquals(0, onlines.size());
        }
        
 

    }


List<Payment__c> payList = [SELECT id, name, Mode__c, Customer__c from Payment__c limit 5];
PaymentTriggerHandler.createPayment(payList);
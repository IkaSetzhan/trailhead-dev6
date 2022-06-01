public class AccountPrac6Handler {
    public static void  annualValidationRule(list<Account> accTriggerNew, 
    List<Account> accTriggerOld,
     Map<id, Account> accTriggerNewMap, 
         Map<id, Account> accTriggerOldMap) {
//1. When the Annual revenue field value is reduced from the previous value then show the following 
//message:
//‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the record.
    for(account eachAcc : accTriggerNew){
        if(eachAcc.AnnualRevenue != null &&  accTriggerOldMap.get(eachAcc.id).AnnualRevenue != null) { 
            if (eachAcc.AnnualRevenue < accTriggerOldMap.get(eachAcc.id).AnnualRevenue){
        eachAcc.addError('Annual Revenue for an account cannot be reduced');
    }
    }

    }
}
}

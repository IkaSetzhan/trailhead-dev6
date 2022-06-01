public class AccountManagerHw{
    public static void  updateAccounts(List<Account> newAcc) {
            List<Account> accToUpdate =[select id, name, Description, CreatedDate from Account WHERE id IN : newAcc];
            for(Account ttt : accToUpdate){
                ttt.description = ttt.Name + ' ' + ttt.CreatedDate;
            }
            update accToUpdate;
        }

    }


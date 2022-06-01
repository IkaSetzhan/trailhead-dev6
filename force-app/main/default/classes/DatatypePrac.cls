/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class DatatypePrac {
    public void  printDatatype() {
        String batchName = 'Falcons 3';
        integer totalCand = 45;
        Boolean isAdmincomp = true;

        string batchDesc = batchName + ' are the best';
        system.debug(batchDesc);
        system.debug('total cand '  + totalCand);
        system.debug('is admin com  ' + isAdmincomp);

    }
    public void printDatatype2(string bn){
        string batchName = bn;
        system.debug('batch name is ' + batchName);
    }
    public void printDatatype3(string bn, integer cand, boolean ac){
        String batchName = bn;
        integer totalCand = cand;
        Boolean isAdmincomp = ac;
        totalCand = totalCand;
    string batchDesc = batchName + ' are the best';
    system.debug(batchDesc);
    system.debug('total cand '  + totalCand);
    system.debug('is admin com  ' + isAdmincomp);
    
}
}

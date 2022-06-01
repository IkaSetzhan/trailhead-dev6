/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Humans {
    public string FullName(string firstName, string lastName) {
        string fullName = '';
        fullName = firstName.toUpperCase();
        fullName += ' ' + lastName.toUpperCase();
        return fullName;
    }
    public integer age(date bd){
        integer a = 0;
        date today = date.today();
        integer daysAge = bd.daysBetween(today);
        a = integer.valueOf(daysAge/365);



        return a;
    }
}

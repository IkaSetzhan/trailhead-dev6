/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  class PracticeStuClass {
    public void tomMethod() {
        Student1 s1 = new Student1();
s1.Name = 'Kara';
s1.BirthDate = date.newInstance(2012,2,2);
s1.SchoolName = 'Barbara';

system.debug(s1);

Student1 s2 = new Student1();

s2.Name = 'Tom';
s2.BirthDate = date.newInstance(2015,2,2);
s2.SchoolName = 'Barbara';

system.debug(s2);

    }
    public void penKey(){
        
        Date todayDate = Date.today();
        system.debug(todayDate);
    
    }
}

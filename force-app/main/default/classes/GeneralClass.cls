/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  class GeneralClass {
   public void createStudents(){
    Student1 s1 = new Student1();
    s1.Name = 'sara';
    s1.BirthDate = date.newInstance(1970,11,3);
    s1.SchoolName = 'exley';

    system.debug('student info ' +s1);

    Student1 s2 = new Student1();
    s2.Name = 'Yerkhan';
    s2.BirthDate = date.newInstance(1988,5,2);
    s2.SchoolName = 'exley';

    system.debug(s2);
   }
   public void justPrint(){
    integer i = 5+5+5+5;
    system.debug(i);
   }
}

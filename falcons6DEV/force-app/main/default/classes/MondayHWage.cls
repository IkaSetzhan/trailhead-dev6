public  class MondayHWage {
    public void PersonAgeHW() {
 //1.Write an apex script to show the age of the person in days, months and years based on the date of birth.      

    Date personBirthDate = Date.newInstance(2009, 01, 16);
    system.debug('Person age is: '  + personBirthDate);
    date todaydate = date.today();
        
    Integer ageYear = personBirthDate.monthsBetween(todaydate)/12;
    Integer ageMonths = personBirthDate.monthsBetween(todaydate);
    Integer ageDay = personBirthDate.daysBetween(todaydate);

    system.debug( 'Person Year age is: ' + ageYear);
    system.debug('Person Months age is: ' + ageMonths);
    system.debug('Person Day age is: ' + ageDay);

    }
    //2. Write an apex script to show the total number of days remaining for the expiration of the plan.

    public void totalNumOfDays(){

        Date startDate = Date.Today();
        Date expDays = Date.newInstance(2022, 07, 01);
       
      Object remainDay = startDate.daysBetween(expDays);
        system.debug('Total number of days ' + remainDay);


    }
}

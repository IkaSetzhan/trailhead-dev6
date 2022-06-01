public  class DateTimeAgeInmonth {
    //1 Age in Months
    public void calculateAgeInMonth() {
        System.debug('calculates age in month');
        date birthDate = date.newInstance(1978, 04, 17);
        System.debug('my birthdate is = ' + birthDate);
        date todaydate = date.today();
        System.debug('todays date :' + todaydate);
        Integer ageInMonths = birthDate.monthsBetween(todaydate);
        System.debug('My age in months : ' + ageInMonths);
    }
    // Age in days 2
        public void  calculateAgeIndays(){
            system.debug('calculate age in days');
            date birthDate = date.newInstance(1978, 04, 17);
            date todaydate = date.today();
            Integer ageInDays = birthDate.daysBetween(todaydate);
           
            system.debug(ageInDays);
            
        }
        // 3. printSubscriptionEndDate
        public void printSubcriptionEndDate(){
            date subscriptionStartDate = date.today();

            date subscriptionEndDate = subscriptionStartDate.addDays(2000);
            system.debug('subscription end date = ' + subscriptionEndDate);
    
            integer endDateYear = subscriptionEndDate.year();
            integer endDateMonth = subscriptionEndDate.month();
            integer endDateDay = subscriptionEndDate.Day();
    
            system.debug('subs end date year is = ' + endDateYear);
            system.debug('subs end date month is = ' + endDateMonth);
            system.debug('subs end day ==> ' + endDateDay);

        }
        // DateTimeMethodsDemo 
      
            public void printOfferEndDateTime(){
                datetime dtNow = datetime.now();
        
                datetime dtOfferEnd = dtNow.addHours(100);
                system.debug('offer will end on: ' + dtOfferEnd);
        
                date offerEndDate = dtOfferEnd.date();
                system.debug('offer end date is ' + offerEndDate);
            }
        
   


}
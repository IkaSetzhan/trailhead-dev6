public  class playingWithDates {
    public  void printDateOutput() {
        //1.print today's date
        Date currentDay  = Date.today();
        system.debug('Today date is: '+ currentday);
        //2. Create an instance of a date for 5th November 2789. 
        Date newdate = Date.newInstance(2789, 11, 5);
        system.debug('future year '+ newdate);
        //3. Create an instance of a date for 4th March 1459. 
        Date oldDate = date.newInstance(04, 03, 1459);
        system.debug('Old date is: ' +oldDate);

        //4. Create three Integer variables (dayInt, monthInt, yearInt) for storing day, month, year 
      //respectively and provide some default values in them.
      Integer year = 2050;
      integer month = 04;
      Integer day = 17;
      Date newDate1 = Date.newInstance(year, month, day);
      system.debug('future date: ' + newDate1);
      
        //5. Using the three Integer variables (dayInt, monthInt, yearInt) create a new date instance 
         // and save it in a new variable.


    }
}
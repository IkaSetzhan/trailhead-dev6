public  class primitiveDataTypeDemo2 {
    public void printNewDateTime(){
    //today's date
    date today = date.today();
    system.debug('today '+ today);
    
    time trytime = time.newInstance(23, 23, 23, 23);
    system.debug('time '+ trytime);
    
    //new time
    time newTime = time.newInstance(9, 8, 0, 0);
    system.debug('newTime: '+ newTime);
   
    //1 new datetime from DATE and TIME
    datetime dt1 = datetime.newInstance(today, newTime);
    system.debug('dt1 ' + dt1);
   
    //2 datetime from YEAR, MONTH, DAY
    datetime dt2 = datetime.newInstance(2025, 1, 9);
    system.debug('dt2 is ' +dt2);
   
    //3 Datetime year month day hour min sec
    datetime dt3 = datetime.newInstance(2022, 02, 20, 15, 15, 15);
    system.debug('dt3 is '+dt3);
   
    // 4 current datetime
    datetime currentDT = datetime.now();
    system.debug('current DT: ' +currentDT);
   
    //5 milloseconds LongTime

    long longTime = 123654789321L;
    system.debug('long time==> ' + LongTime);

    //DateTime dt4 = DateTime.newInctance(LongTime);
    //system.debug('dt4 '+ dt4);
    }

   
    public void printNewDate() {
        system.debug('create new Data inctance');
// newInstance(year, month day)
Date newDate = Date.newInstance(1995, 5, 15);
system.debug('new date: ' +newDate);
Date newDate2 = Date.newInstance(2022, 02, 02);
system.debug('new date2: ' + newDate2);
// today's date
Date todayDate = date.today();
system.debug('today date is ' + todayDate);
    }
public void printNewTime(){
Time myTime = Time.newInstance(21, 29, 2, 30);
        Time meTime = Time.newInstance(22, 22, 2, 30);
        System.debug('my time :' + myTime);
        System.debug('my time :' + meTime);


    }
}
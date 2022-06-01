DatetimeLeap dtm = new DatetimeLeap();
date newDate = date.today();
boolean newDateLYcheck = dtm.LeapYearCheck(newDate);
system.debug(newDateLYcheck);
date dt1 = date.newInstance(2020, 01, 01);
boolean lpCheck2 = dtm.leapYearCheck(dt1);
system.debug('leap year check 2 ' + lpCheck2);

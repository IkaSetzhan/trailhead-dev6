Students srk = new Students();
srk.firstName = 'Shah-Ruk';
srk.lastName = 'Khan';
srk.year = 1980;
srk.major = 'Arts';
string returnMajor = srk.generateReport();
system.debug('returned major is ' + returnMajor);

Students srr = new Students();
srr.firstName = 'Suka';
srr.lastName = 'Ru';
srr.year = 2007;
srr.major = 'Arts';
string returnMajorSsr = srr.generateReport();
system.debug('returned major is ' + returnMajorSsr);
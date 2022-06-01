public  class PrimitiveDatatypeDemo {
    public void printBasicDataType(){
     string batchName = 'Falcons 6';
     integer totalCandidates = 40;
     Boolean isAdmincompeted = true;   
     system.debug('batch name is ' + batchName);
     system.debug('total # of candidates: ' + totalCandidates );
     system.debug('admin completed ' + isAdmincompeted);
     Decimal desValue = 27.01;
     system.debug('Desimal: ' + 27.01);

     Long LongValue = 21456355L;
     system.debug('Long: ' + LongValue);
     Object obj = 'this is a sting';
     Object obj2 = 10;

     system.debug('object 1 : '+ obj);
     system.debug('object 2 : '+ obj2);
     Id id1  = '0015j00000ccroOAAA';
     system.debug('id: ' + id1);
     // GMT time
     Datetime dt5 = DateTime.newInstanceGMT(1992, 1, 28, 18, 0, 0);
     system.debug('dt= ' + dt5);
    }
    
    }


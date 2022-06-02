public  class loopDemo {
    public void print_int_while() {
        Integer count = 1;
        while(count<=25){
            system.debug(count);
            count++;
        }
    }
    //implement execute method is mandatory
        public void print_N_numbers(integer n){
            //for initialize condition increment
            for(integer i=0; i<n; i++ ){
                system.debug(i);
            }
        }
        // print method here for GITHUB
        public void print_sum_N_numbers(integer n){
            integer sum = 0;
            for (Integer i = 0; i <= n; i++) {
               sum += i;
            }
                system.debug('summation is ' + sum);
              

         
        }       
        public void print_N_Odd_numbers(integer startInt, integer endInt){
            for (Integer i = startInt; i <=endInt; i++) {
                integer modI = math.mod(i, 2);
                if(modI == 1) system.debug(i);
            }
        }  
         
}

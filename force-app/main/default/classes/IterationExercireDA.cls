public with sharing class IterationExercireDA {
 
    public void getMuitiplicationTable(Integer num){
        for(Integer i=0; i<=10; i++){
            system.debug(I + 'X' +num+ '=' +i*num);
        }
    }
    public void getPerfectAverage(Integer num1, Integer num2){
        Integer sum = 0;
        Integer cnt = 0;
        for(Integer i = num1; i<=num2; i++){
            sum = sum + i;
            cnt = cnt +1;
        }
        Integer avg = 0;
        avg = sum/cnt;
        system.debug(sum);
        system.debug(cnt);
        system.debug(avg);
    }
}

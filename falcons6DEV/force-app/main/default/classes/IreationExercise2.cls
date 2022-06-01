public with sharing class IreationExercise2 {
    public void getPerfectAverage(integer num1, integer num2) {
        system.debug('input: num1= ' +num1);
        system.debug('input: num2= ' +num2);
        integer sum = num1;
        integer counter = 1;
        for (Integer i = (num1+1);  i < num2; i++) {
            sum = sum + i;
            counter ++;
            
        }
        integer average = sum/counter;
        system.debug('output: ' + average);
        system.debug(' ');
        system.debug('calculations: ');
        string s = '';
        for(integer i = num1; i<num2; i++){
            s+= string.valueOf(i)+ ' + ';
            system.debug(s+num2 + ' = ' + sum);
            system.debug('Total ' +counter+ 'numbers between ' + num1+ 'to ' +num2);
            system.debug(sum + ' / ' +counter+ ' = ' +average);
        }
            
        }

    }


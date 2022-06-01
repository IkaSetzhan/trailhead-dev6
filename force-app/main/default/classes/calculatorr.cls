public class calculatorr {
    public Decimal dynamicCalulationMethod(Decimal deci1, Decimal deci2, string operation) {
        decimal answer;
        
        switch on operation {
            when 'ADDITION'{
                answer = deci1+deci2;
            }
            when 'SUBTRACTION' {
                answer = deci1-deci2;
            }
            when 'DIVISION'{
                answer = deci1/deci2;
            }
            when 'MULTIPLICATION'{
                answer = deci1*deci2;
            }
            when else{
                answer = 0;
            }
        }


        return answer;
    }
}
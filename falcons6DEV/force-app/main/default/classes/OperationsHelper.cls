public class OperationsHelper {
   public decimal largestOutOfTwoNumbers(decimal deci1, decimal deci2){
       decimal largestDecimal;
        if(deci1 > deci2){
            largestDecimal = deci1;
        } else {
            largestDecimal = deci2;
        }
       return largestDecimal;
}

public decimal  smallestOutOfThreeNumbers(decimal deci1, decimal deci2, decimal deci3){
    decimal smalledNumber;
    if (deci1 < deci2 && deci1 < deci3) {
        smalledNumber = deci1;  
    } else if(deci2 < deci1 && deci2 < deci3){
        smalledNumber = deci2;
    } else{
        smalledNumber = deci3;
    }

    return smalledNumber;
}
}


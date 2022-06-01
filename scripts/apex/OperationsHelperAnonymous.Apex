OperationsHelper large = new OperationsHelper();
integer c = large.largestOutOfTwoNumbers(10,20);
system.debug( 'The largest number is' + c);
operationsHelper small = new operationsHelper();
decimal g = small.smallestOutOfThreeNumbders(11.2, 4.6, 34.1);
system.debug( 'The smallest number is' + g);

OperationsHelper obj = new OperationsHelper();
list<decimal> emptyList = new list<decimal>();
 List<Decimal> decNum = new List<Decimal>{250.5, 9.2, 8,2};

system.debug(obj.sumNumbers(emptyList));
obj.average(emptyList);
obj.highest(emptyList);
 obj.lowest(emptyList);
 
 list<decimal> reverseList = new list<decimal>();
 reverseList.add(1.7);
 reverseList.add(2.7);
 reverseList.add(3.7);
 reverseList.add(4.7);
 reverseList.add(5.7);
 obj.sumNumbers(reverseList);
 obj.average(reverseList);
 obj.highest(reverseList);
 obj.lowest(reverseList);

Calculator calc = new Calculator();
integer sum1 = calculator.add(10,20);

system.debug('sum 1 = ' + sum1);
integer sum2 =  calculator.add(100,200);
system.debug('sum 2 = ' + sum2);
integer finalSum =  calculator.add(sum1, sum2);
system.debug('final sum = '+ finalSum);
integer sum3 =  calculator.add(15, 20, 20);
system.debug('sum3 = ' + sum3);

List<integer> listInteger = new list<integer>();
listInteger.add(10);//0
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(16);//4
integer listSum = Calculator.add(listInteger);
system.debug('sum of list elements ' + listSum);
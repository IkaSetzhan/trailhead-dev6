list<string> colorList = new list<string>();
colorList.add('red');
colorList.add('white');
colorList.add('black');
colorList.add('yellow');
colorList.add('grey');
system.debug('list color list is ' + colorList);
integer colorSize = colorList.size();
system.debug('Size color list is ' +colorList.size());
boolean isRedColor = colorList.contains('red');
system.debug('list contains color Red is  ' +isRedColor);
string lastColor = colorList.get(colorSize-1);
system.debug('last color is ' +lastColor.toUpperCase());
colorList[3] = colorList[3].toUpperCase();
system.debug('make 4 th element capital letters ' + colorList);
list<string> colorCodesList = new list<string>();
colorCodesList.add('#FF0020');
colorCodesList.add('#FF0111');
colorCodesList.add('#FF01230');
colorCodesList.add('#FF010');
colorCodesList.add('#FF0120');
// Create a different List named colourCodesList in which we need to store some colourcodes. For 
//example: ‘#FF0000’ is code for red colour
boolean  redColor = colorList.contains('red');
colorCodesList.equals(redColor);
system.debug('color #FF0020  is Red ' + redColor);
boolean result = colorList.equals(colorCodesList);
system.debug('compare two lists  ' +result);
list<string> newList = new list<string>();
newList.addAll(colorList);
newlist.addAll(colorCodeslist);
system.debug('merge two lists  ' + newList);


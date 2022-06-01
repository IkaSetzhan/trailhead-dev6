list<String> colors = new list<string>();
colors.add('Red');
colors.add('White');
colors.add('Black');
colors.add('Yellow');
colors.add('Gray');
colors.add('gold');
colors.add('blue');

Boolean rezult = colors.contains('Red');
system.debug('color contains: ' + rezult);   
integer colorsSize = colors.size();
system.debug('List colors ' +colors);
system.debug('color size is ==> ' + colorsSize);
 //Retrieve the last element of the List and print it in the upper case. 
string lastColor = colors.get(colorsSize-1);
system.debug('last element of the list ' + lastColor.ToUpperCase());
colors[3] = colors[3].ToUpperCase();
system.debug(' Change list letters ' + colors);
 //Create a different List named colourCodesList in which we need to
 // store some colourcodes. For 
//example: ‘#FF0000’ is code for red colour. 
 List<string> colorCodesList = new List<string>();
 colorCodesList.add('#FS1100');
 colorCodesList.add('#FS1000');
 colorCodesList.add('#FS01001');
colorCodesList.add('#FS11001');
Boolean result2 = colors.equals(colorCodesList);
system.debug('compare two lists ' + result2 );
//merge the two Lists (colourCodesList, coloursList) and  
//print the newly created list
List<string> newList = new List<string>();
newList.addAll(colors);
newList.addAll(colorCodesList);
system.debug('two lists ' +newList);
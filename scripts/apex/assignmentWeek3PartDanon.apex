//PART D – Set and Set Class Methods
//1. Create a set of strings named as uniqueNameSet with “Tom” and “Jerry” as the default values in it.
Set<String> uniqueNameSet = new Set<string>{'Tom', 'Jerry'};
system.debug('Unique name is ' + uniqueNameSet);
//2. Print the size of the above created Set.
Integer size = uniqueNameSet.size();
system.debug('Unique name set size  ' + size);
//3. Add new elements in the uniqueNameSet.
uniqueNameSet.add('Bob');
uniqueNameSet.add('Furry');
uniqueNameSet.add('Furry');
system.debug('new elements ' + uniqueNameSet);
//4. Check if uniqueNameSet contains your name?
string myName = 'Indira';
Boolean ismyName = uniqueNameSet.contains(myName);
system.debug('if uniqueNameSet contains my name ' +ismyName);
//5. Check if the uniqueNameSet is Empty.
Boolean isEmpty = uniqueNameSet.isEmpty();
system.debug('if the uniqueNameSet is Empty  ' + isEmpty);
//6. Clear the set and print it.
uniqueNameSet.clear();
system.debug('clear a set ' + uniqueNameSet);
//7. Now check if the set is empty or not.
isEmpty = uniqueNameSet.isEmpty();
system.debug('is unique name set empty ' + isEmpty);
//8. Is it possible to get an element from a set with the help of an index? If Yes, then please write the 
//code for the same and If No, then why is it not possible
// answer is No, bc set doesn't have index.
//9. List down at the differences between set and list.
//answer Set unordered collection no duplicate no index
// List is an ordered coolection, list can be duplicate also has index.


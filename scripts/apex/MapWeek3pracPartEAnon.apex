//PART E – Maps and Map Class Methods [Extras]
//1. Create a Map named zipCodeToCityMap which should contain the Zipcode to City Name 
//mapping. Like below:
//2. Add multiple mappings of your choice in the zipCodeToCityMap Map. 
map<integer,string> zipCodeToCityMap = new map<integer,string>();
zipCodeToCityMap.put(77450, 'katy');
zipCodeToCityMap.put(77082, 'Houston');
zipCodeToCityMap.put(77120, 'Dallas');
zipCodeToCityMap.put(77101, 'katy');
system.debug('Zip code to city map ' + zipCodeToCityMap);
// 3.Check if the above map contains mapping for 204101.
boolean isContains204101 = zipCodeToCityMap.containsKey(204101);
system.debug('is map contains mapping for 204101. ' + isContains204101);
//4. Print all the Zip Codes present in the zipCodeToCityMap.
system.debug(zipCodeToCityMap.keySet());
//5. Print all the city names present in the zipCodeToCityMap.
system.debug(zipCodeToCityMap.values());
//6. Print the number of mappings present in the zipCodeToCityMap.
system.debug(zipCodeToCityMap.size());
//7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap
set<integer> uniqueZipCodeSet = zipCodeToCityMap.keySet();
system.debug('unique zip code set ' + uniqueZipCodeSet);
//8. Create a List as cityNameList and populate it with all the city names from zipCodeToCityMap. 
list<string> cityNameList = zipCodeToCityMap.values();
system.debug('all the city names ' + cityNameList);
//9. Check if the zipCodeToCityMap is Empty. 
Boolean isEmpty = zipCodeToCityMap.isEmpty();
system.debug('zipCodeToCityMap is Empty ' + isEmpty );
//10. List down the differences between list and Map
//answer: list is ordered, can be duplicate and has index
// map is key and value pair. key should be unique. Value can be duplicate.

// Test -part 2 short Video test class, test method, assertion 
//How to write, run assert Tests

public with sharing class StringVitapVDemo {
   public static string  concateAndUpperCase(string a, string b){
    string result = a + ' , ' +b;
    result = result.toUpperCase();
    return result;
   }
}

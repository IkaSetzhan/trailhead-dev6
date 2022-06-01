public with sharing class StringArrayHW {
    public static list<String> generateStringArray(integer n) {
        List<string> listStr = new list<string>();
        for(integer i = 0; i < n; i++){
            String str = 'Test' + i;
            listStr.add(str);
        }
        return listStr;
    }
}

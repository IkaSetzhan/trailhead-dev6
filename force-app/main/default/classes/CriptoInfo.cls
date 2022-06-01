public class CriptoInfo {
    public static decimal  showPrice(string coinName) {
        decimal price;
        Map<String, decimal> criptoMap = new Map<String, decimal>();
        criptoMap.put('Bitcoin', 35.500);
        criptoMap.put('Tesla', 24.200);
        criptoMap.put('Karton', 18.150);
        criptoMap.put('Shak', 65.240);
        price = criptoMap.get(coinName);
     
        return price;


    }
}

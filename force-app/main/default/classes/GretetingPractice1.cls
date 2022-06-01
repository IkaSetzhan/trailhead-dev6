public class GretetingPractice1 {
    public string language = '';
    public string GreetingHello(){
        string greet = '';
        if(language == 'Hindi'){
            greet = 'Namaste';
        }else if(language=='Kazakh'){
            greet = 'Salem';
        }else if(language=='Turkish'){
            greet = 'Maraba';
        }else if(language=='Ozbek'){
            greet = 'Salam';
        }else{
            greet = 'HELLOOO';
        }
        return greet;
    }
    public string GreetingHello(integer n){
        string greet = GreetingHello();
    
        string finalReturnString = greet;
        for (Integer i = 1; i < n; i++) {
            finalReturnString = finalReturnString + ' '+greet;
            
        }
        return finalReturnString;
        }
        
    }

    


/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/



public class Calculator {
    public void welcomeMessage(){
        system.debug('welcome to apex calC');
    }
    public void printNewMessage(string msg){
        //use parameter variable name inside the method.
        system.debug(msg);
    }

    public void printNewMessage2(string msg, Date dt){
        system.debug(msg);
        system.debug(dt);
    }
    //add method with 2 params
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    //add method with 3 params
    public integer add(integer a, integer b, integer c){
        return a+b+c;
    }
}

/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-24-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class SetOfString {
    public static void uniqueNameSet() {
        set<string> friends = new set<string>();
        friends.add('Tom');
        friends.add('Jerry');
        friends.add('Tom');
        friends.add('Gold');
        friends.add('shrek');
        friends.add('Patric');
       system.debug('friends ' +friends);
    }
}
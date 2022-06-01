//1. Write an apex class called the StudentInfo, that will have a constructor which will print the welcome message. 
//Create the method call it from anonymous apex to have the list of names added and print those names.


public  class StudentInfo {
    public StudentInfo() {
        system.debug('Welcome!');
    }
    public void listOfNames(){
        list<string> listOfStudents = new list<string>();
        listOfStudents.add('Ika');
        listOfStudents.add('Eric');
        listOfStudents.add('Ira');
        listOfStudents.add('Monia');
        system.debug('list of students ' + listOfStudents);
    }
}
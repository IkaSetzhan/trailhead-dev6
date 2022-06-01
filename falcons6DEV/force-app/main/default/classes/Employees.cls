/*1. Create the class called the Employees, 
which will have the names of the employees which we need to 
sort at the time of printing all the names.*/

public  class Employees {
    public static void EmployeesSort() {
    List<string> employeesNames = new List<string>();
    employeesNames.add('Ika');
    employeesNames.add('Boris');
    employeesNames.add('Ainur');
    employeesNames.add('David');
    employeesNames.add('Nathen');
    employeesNames.add('Ryan');
    employeesNames.add('anara');
    employeesNames.sort();
    system.debug('Employees names by sort: ' + employeesNames);


    }
}

public class EmployeeInfo {
    public static string showInfo(integer nameEmp){
        string empNumber = '';
        map<integer,string> employeeMap = new map<integer,string>();
        employeeMap.put(1,'Karl');
        employeeMap.put(2,'Dina');
        employeeMap.put(3,'Fadih');
        employeeMap.put(4,'Ryan');
        employeeMap.put(5,'Bota');
        employeeMap.put(6,'Ika');
        if(employeeMap.containsKey(nameEmp)){
            empNumber = employeeMap.get(nameEmp);
        }else{
            empNumber = 'does not exist';
        }
        return empNumber;             
    }
}

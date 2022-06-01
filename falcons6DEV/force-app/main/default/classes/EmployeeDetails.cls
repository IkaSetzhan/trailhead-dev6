public class EmployeeDetails {
   
        /*2. Create an apex class called EmployeeDetails to have a method called showDetails 
 which will accept the personal details of an employee (name, email, phone)
 as parameters and than it should show the details from that method itself.*/
 public void showDetails(string name, string email, string phone) {
   
     system.debug('Personal name ==> ' + name);
     system.debug('Personal gmail ==> ' + email);
     system.debug('Personal phone ==> ' + phone);
   
    }
}

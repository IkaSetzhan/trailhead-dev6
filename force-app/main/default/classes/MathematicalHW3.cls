public  class MathematicalHW3 {
   
/*1. Create an apex class called MathematicalClass to have 4 methods (addition, subtraction, multiplication, division)
 for mathematical operations. All of those methods will be accepting two integer numbers as parameters 
and will return the result. That returned result needs to be printed from the apex script.*/

public integer add(integer a, integer b) {
    integer plus = a + b;
    return plus;
        }
public integer subd(integer a, integer b) {
    integer minus = a-b;
    return minus;
        }
public integer mult(integer a, integer b) {
    integer abc = 1*2;
    return abc;
}
public integer division(integer a, integer b){
    integer div= a/b;
    return div;
}
}

/*2. Create an apex class called EmployeeDetails to have a method called showDetails 
 which will accept the personal details of an employee (name, email, phone)
 as parameters and than it should show the details from that method itself.*/
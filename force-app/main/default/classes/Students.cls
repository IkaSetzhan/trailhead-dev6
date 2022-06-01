public class Students {
    public string firstName;
    public string lastName;
    public integer year;
    public string major;

    public string generateReport(){
        system.debug('Report generated for ' + firstName + ' ' + lastname + ' ' + year);
        return major;
    }

    }
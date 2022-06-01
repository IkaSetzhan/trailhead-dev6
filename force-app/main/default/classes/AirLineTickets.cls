public class AirLineTickets {
    public string departureCity;
    public string arrivalCity;
    public string flightNumber;
    public string seatAssigned;

    public void printTicket(){
        system.debug('This ticket is for the journey from ' + departureCity + ' to ' +
        arrivalCity+'.');
    }

    }
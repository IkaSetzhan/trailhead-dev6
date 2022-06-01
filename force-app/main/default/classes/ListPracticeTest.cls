@isTest
public class ListPracticeTest {
    @isTest
    public static void testAddPlanet() {
        string planetName = 'mars';
        integer planetNumber = 3;
        integer numberOfMoons =5;
        ListPractice lp= new listPractice();
        string returnPlanet = lp.addPlanet(planetName, planetNumber, numberOfMoons);


        system.assertEquals('Planet added successfully', returnPlanet);
        string returnplanet2 = lp.addPlanet(null,4,1);
        system.assertEquals('Planet without name cannot be added to the list', returnplanet2);
 }
}

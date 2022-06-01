public  with sharing class ListPractice {
    public Static List<Planets> planetsList = new List<Planets>();

    public String addPlanet(String planetName, integer planetNumber, Integer numberOfMoons) {
        string returnMessage = '';
        if(planetName !=null && planetName != ''){
            Planets p = new Planets();
            p.planetName = PlanetName;
            p.planetNumber = planetNumber;
            p.numberOfMoons = numberOfMoons;
            planetsList.add(p);
            returnMessage = 'Planet added successfully';
        }else{
            returnMessage = 'Planet without name cannot be added to the list';
        }
        return returnMessage;

    }
}

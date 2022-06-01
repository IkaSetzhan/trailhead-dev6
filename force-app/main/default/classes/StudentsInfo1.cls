public  class StudentsInfo1 {
    public StudentsInfo1() {
        system.debug('welcome to Apex');

    }
    public  void abc(){
       List<String> names = new List<String>();
       names.add('John');
       names.add('Ika');
       names.add('Nora');
       system.debug('The names are: ' +names);
    }
}
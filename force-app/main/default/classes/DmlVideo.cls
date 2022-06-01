public  class DmlVideo {
    public static void createContact() {
        Contact c = new contact(); // cretaed one new instance
        c.Salutation = 'Ms.';
        c.LastName = 'Kamazhai';
        insert c; //DML
    }

    public static void createUpdateContact(){
        Contact c = new contact(); // cretaed one new instance
        c.Salutation = 'Ms.';
        c.LastName = 'Kamazhai';
        system.debug(c);
        insert c; //DML
        system.debug('after dml c= ' + c);
        c.FirstName = 'Kama';
        update c;
        system.debug('after update dml c = ' +c);

    }
    public static void updateONEContact(){
        contact c1 = [select id,firstname from contact where lastname = 'kamazhai' limit 1];
        c1.FirstName = 'Kama';
        c1.phone = '123574';
        c1.Email = 'cgmail@1.com';
        update c1;
    }
}



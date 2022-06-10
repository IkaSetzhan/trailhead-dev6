@isTest
public  class CalloutAssignmentMock implements HttpCalloutMock{
    public Httpresponse respond(httpRequest request) {
        HttpRequest response = new HttpRequest();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"data":[{"ID Nation":"01000US","Nation":"United States","ID Year":2019,"Year":"2019","Population":328239523,"Slug Nation":"united-states"}]}');
        response.setsstatuscode(200);
        return response;
    }
}

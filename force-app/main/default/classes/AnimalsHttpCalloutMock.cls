@istest
public  class AnimalsHttpCalloutMock  implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animals":["horse","dog","cat"]}');
        response.setStatusCode(200);
        return response;
    }
   
}

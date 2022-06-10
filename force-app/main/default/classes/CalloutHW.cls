public  class CalloutHW {
   public static void fetchData(){

    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://datausa.io/api/data?drilldowns=Nation&measures=Population');
    request.setMethod('GET');

    http http = new http();
    HttpResponse  reponse = http.send(request);
    system.debug('Status: ' +response.getstatus());
    system.debug('Status Code: ' +response.getStatus());

    object obj = json.deserialize(assignmentJSON);
    map<string, object> results = (map<string, object>) obj;

    List<object> fromResult = (list<object>)result.get('data');

    system.debug('==========object starts here=======');
    for(object ob : fromResult){
        system.debug(ob);
    }
    system.debug('========object ends here======');
   }else{
       system.debug('Something went wrong!');
   }
}

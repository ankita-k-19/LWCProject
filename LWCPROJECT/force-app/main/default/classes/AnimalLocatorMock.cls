Global class AnimalLocatorMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
   
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json;charset=UTF-8');
        res.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
        res.setStatusCode(200);
        return res;
    }

}
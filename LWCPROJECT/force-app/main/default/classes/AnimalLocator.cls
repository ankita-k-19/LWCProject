public class AnimalLocator {

    public static string getAnimalNameById(integer idAnimal){
        string Name;
        string endpoint='https://th-apex-http-callout.herokuapp.com/animals/'+idAnimal;
        httpRequest request=new httpRequest();
        http http=new http();
        //httpResponse response=new httpResponse();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
   
            
           httpResponse response = http.send(request);

            
            if(response.getStatusCode()==200){
                
                string body=response.getBody();
                //system.debug(body);
                
                Map<String,Object> results=(Map<String,Object>)json.deserializeUntyped(body);
                list<Object> innerresult=new  list<Object>();
                for(String s:results.keyset()){
                    
                   
                        object a = results.get(s);
                        innerresult.add(a);
                }
                
                for(object o:innerresult){
                    
                    map<String,object> oresult=(map<String,object>)o;
                    //system.debug(oresult);
                    Name=(string)oresult.get('name');
                }
                
                
        
    }
        
        return Name;
}
}
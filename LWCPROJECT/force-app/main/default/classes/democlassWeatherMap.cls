public class democlassWeatherMap {
    public static void demo(){
        string Name;
        string endpoint='https://api.openweathermap.org/data/2.5/weather?q=TORONTO&appid=e47b2b61b91dbed97ec2f474f1f67938';
        httpRequest request=new httpRequest();
        http http=new http();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        httpResponse response = http.send(request);
        
        
        if(response.getStatusCode()==200){
            
            string body=response.getBody();
            Map<String,Object> weather=(Map<String,Object>)json.deserializeUntyped(body);
            //system.debug(weatherlist);
            
            
            for (string o:weather.keyset()){
                if(o=='coord') {
                    system.debug(o);
                    Map<String,object> coord=(Map<String,object>)weather.get(o);
                    system.debug(coord.values());
                }else if(o=='weather'){
                    
                    list<Object> weatherlist=(list<Object>)weather.get(o);
                    
                    for(Object obj:weatherlist){
                        Map<String,object> weatherdesc=(Map<String,object>)obj;
                        system.debug(weatherdesc.get('description'));
                    }
                }
               }   
        }
    }
}
import { LightningElement } from 'lwc';

export default class FetchAPIDay12 extends LightningElement {

    clicked=false;
    newArray;
   

    async Previous(event) {
        

        var requestOptions = {
            method: 'GET',
            redirect: 'follow'
          };
          
    
        try
        {
           
            var result = await fetch("https://api.themoviedb.org/3/trending/all/day?api_key=16c8760c43c8dc1fd487ad0d2a2241f4", requestOptions);
            var datafromApi=await result.json()
            
            /**newArray stores movies which have a valid title**/
            this.newArray = datafromApi.results.filter(item => {
                return item.original_title;
            });


            
            console.log(this.newArray);

            }
            catch(e){
                console.log(e);
            }
        }

    
         
        
        
}
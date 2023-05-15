import { LightningElement } from 'lwc';

export default class Demo2 extends LightningElement {

    areDetailsVisible = false;
    datas=[];
    // async function
  

    async handleChange(event) {
        this.areDetailsVisible = event.target.checked;
     
    
            try{
            
            url="https://jsonplaceholder.typicode.com/posts"
            result = await fetch(url,{method:"GET"}); 
            this.datas=await result.json()
            }
            catch(e){
                console.log(e);
            }
           
            
           
           
        
    
    }

}
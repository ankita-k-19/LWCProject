import { LightningElement,api } from 'lwc';

export default class Daughtercomponent extends LightningElement {


    progressval=0;

    @api progress(){


        
        setInterval(() => {
            
      
            
                
                this.progressval=this.progressval+10;
                
               

                if(this.progressval>=100){
                    const e=new CustomEvent("progressreached");
                    this.dispatchEvent(e);
                    this.progressval=0;
                    
                }
            }, 1000);
        
        

        
        


    }


    RaiseEvent(){


         // create custom event
        const e=new CustomEvent("event",
        {detail:{
            name:'abcdfs',
            code:234
        }
        });

        //DISPATCH EVENT
        this.dispatchEvent(e);



    }

}
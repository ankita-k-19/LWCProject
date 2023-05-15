import { LightningElement } from 'lwc';

export default class Sldsmodalparent extends LightningElement {

    click=false;
   
    HandleClick(e){

        this.click=true;
       
        
       
    }
    closechild(){
        this.click=false;
    }

    disconnectedCallback(){
        console.log("disconnect the component")
    }
    


}
import { LightningElement,api } from 'lwc';

export default class Momcomponent extends LightningElement {


    handleProgress(){

        this.template.querySelector("c-daughtercomponent").progress();
        //this.template.querySelector("lightning-button").disabled=true;

    }

    enablebutton(){
        
        //this.template.querySelector("lightning-button").disabled=false;


        //this.template.querySelector("lightning-button").disabled=false;
        
    }

    display(event){

        console.log('Event is passed to the mom component')
        console.log(event.detail);
        console.log(event.detail.name);
        console.log(event.detail.code);
        

    }
}
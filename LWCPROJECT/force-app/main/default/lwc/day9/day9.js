import { LightningElement } from 'lwc';

export default class Day9 extends LightningElement {


    value1;
    value2;
   


    changeVal(event){
        
        this.value1=event.target.value;
        this.value2=this.value1.toUpperCase();
    }

    


    


}
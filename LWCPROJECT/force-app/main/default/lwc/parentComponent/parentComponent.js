import { LightningElement,api } from 'lwc';

export default class ParentComponent extends LightningElement {
    val;
    @api maxslidervalue;

    handleInputChange(e){

        this.val=e.target.value;
        

    }

    handleclick(){

        this.template.querySelector("c-childcomponent").reset();
        this.template.querySelector("lightning-input").value=0;
    }

}
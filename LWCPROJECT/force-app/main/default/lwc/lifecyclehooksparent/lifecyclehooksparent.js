import { LightningElement } from 'lwc';

export default class Lifecyclehooksparent extends LightningElement {

    constructor(){ 
        super()
        console.log("parent constructor called")
    }
    connectedCallback(){ 
        console.log("parent connectedCallback called")
    }
    renderedCallback(){ 
        console.log("parent renderedCallback called")
    }


    onclick=false;
    /**disconnectedCallback(){
        alert('hide Component')
    }**/
    handleclick(){

        this.onclick=!this.onclick;

    }
}
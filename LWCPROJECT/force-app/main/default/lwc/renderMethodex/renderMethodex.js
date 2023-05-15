import { LightningElement } from 'lwc';
import account from './account.html';
import contact from './contact.html';
import rendermoth from './renderMethodex.html';
export default class RenderMethodex extends LightningElement {


    buttonclick
    displayAcc(e){
        
        this.buttonclick=e.target.label;
    }

    displayCon(e){

        this.buttonclick=e.target.label;

    }

    handleback(e){
        
        this.buttonclick=e.target.label;

    }



    render(){

        if (this.buttonclick==='Account'){
            return account;
        }
        else if(this.buttonclick==='Contact')
        {
            return contact;
        }
        else if(this.button==='back'){
            return rendermoth;
        }
        else 
        {
            return rendermoth;
        }
    }



}
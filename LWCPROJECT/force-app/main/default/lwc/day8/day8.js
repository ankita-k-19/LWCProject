import { LightningElement } from 'lwc';

export default class Day8 extends LightningElement {

    clickedButtonLabel;

    message="Greetings! Welcome to the LWC APP";
    //font="slds-text-heading_large "
    textcolour="slds-text-color_default";
    //text=font+textcolour;
    

    handleClickRed(e){

        this.textcolour="slds-text-color_error";
    }
    handleClickGreen(e){

        this.textcolour="slds-text-color_success";
    }

    
   
    

}
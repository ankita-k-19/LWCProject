import { LightningElement ,api} from 'lwc';

export default class sldsmodalcchild extends LightningElement {




    
   
    closecomp(event){

        this.dispatchEvent(new CustomEvent('customeve'));
    }
    

    disconnectedCallback(){
        console.log("disconnect the component")
    }
    

   
   
}
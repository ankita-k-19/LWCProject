import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi'

export default class Ldswireadp4 extends LightningElement {

    /*
    The data should be constructed in the below format 
    data={
        Name : '';
        AnnualRevenue:0000;
        Industry:'';
    }
    */

    data={} //  object is declared to store the values whenever value is inserted in the input 

    handleChange(event){
        
        const name=event.target.name;
        const value=event.target.value;
        this.data[name]=value;

    }

    handleClick(){

        createRecord({apiName:'Account',fields:this.data}) //fields are constructed in the data object
        .then(response=>{
            console.log(response);
            this.data={}
        })

    }


}
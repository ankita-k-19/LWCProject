import { LightningElement ,wire } from 'lwc';

import { getObjectInfo,getPicklistValues } from 'lightning/uiObjectInfoApi';
import industry_PL from '@salesforce/schema/Account.Industry';

export default class Ldswireadp2 extends LightningElement {
industy_options;  // used to store the array that will pass the picklist values to the combo component
recordTypeid;
value='Education'; //
@wire(getObjectInfo,{objectApiName:'Account'})
getrecordid({data,error})
{
    if(data)
    {
        console.log('The RECORD TYPE ID IS');
        this.recordTypeid=data.defaultRecordTypeId;
        console.log(this.recordTypeid);
    }

}

@wire(getPicklistValues,{recordTypeId:'$recordTypeid',fieldApiName: industry_PL})
getpicklistval({data,error}){

    if(data){
        console.log(data);
        console.log(data.values);

        this.industy_options=JSON.parse(JSON.stringify(data.values.map(val=>{

            return {label:val.label,value:val.value};// we have created the data according to the format 
    
        }
            
        )))

        console.log(JSON.parse(JSON.stringify(this.industy_options)))

            

        
    }

}

    
    handleChange(event){

        this.value=event.target.value;
    }

}
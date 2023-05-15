import { LightningElement,wire } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import AccountNo from '@salesforce/schema/Account.AccountNumber'
export default class Ldsday20 extends LightningElement {

accdata;
@wire(getObjectInfo,{ objectApiName: ACCOUNT_OBJECT})
accObjInfo;

get numChild(){

    //console.log(this.accObjInfo.data)
    return this.accObjInfo.data.childRelationships.length;
}
get numFields(){


    //console.log(this.accObjInfo.data.fields)
    return this.accObjInfo.data.fields.length;
}

get customFields(){


    //console.log(this.accObjInfo.data.fields)
    //console.log(JSON.stringify(this.accObjInfo.data.fields))
    console.log(Object.entries(this.accObjInfo.data.fields));
   // const newA = Object.values(this.accObjInfo.data.fields)
   /**newA.forEach(element => {

       console.log(JSON.stringify(element));
        //console.log(Array.from(element))
        
    })**/
    //console.log('the type is' , newA)

}

    
/** this.accdata=data
        console.log(data);
        console.log(data.childRelationships);*/
        
    





}
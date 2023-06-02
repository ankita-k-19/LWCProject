import { LightningElement,wire } from 'lwc';

import { getObjectInfo,getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import Account_object from '@salesforce/schema/Account'

export default class Lwcwireadp3 extends LightningElement {


    @wire(getObjectInfo,{objectApiname :'Account'})
    objectinfo

    @wire(getPicklistValuesByRecordType,{objectApiName: 'Account', 
        recordTypeId: '012000000000000AAA'})
    picklisthandler
    

    handleClick(){
        console.log(this.picklisthandler.data)
    }
    





}
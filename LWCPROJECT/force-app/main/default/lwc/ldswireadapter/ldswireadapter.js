import { LightningElement,wire,api } from 'lwc';

import { getRecord,getFieldValue } from 'lightning/uiRecordApi';

import contact_obj from '@salesforce/schema/Contact';
import contact_AccName from '@salesforce/schema/Contact.Account.Name'
import contact_Accdetails from '@salesforce/schema/Contact.Account.AccountNumber'
import Contact_Name from '@salesforce/schema/Contact.Name';
import contact_department from '@salesforce/schema/Contact.Department'


const fields=[contact_AccName,contact_Accdetails,Contact_Name,contact_department];


export default class Ldswireadapter extends LightningElement {

    
    @api recordId;
    @wire(getRecord, { recordId: '$recordId', fields: fields })
    contactInfo

    get accountNumbervalue(){

            return getFieldValue(this.contactInfo.data,contact_Accdetails);

        }

    get contactName(){
            return getFieldValue(this.contactInfo.data,Contact_Name);

        }

    get accountName(){

            return getFieldValue(this.contactInfo.data,contact_AccName);


        }

    get department(){
            return getFieldValue(this.contactInfo.data,contact_department);

        }
        

    }

    
    




import { LightningElement,api } from 'lwc';
import Name from '@salesforce/schema/Account.Name'
import Phone from '@salesforce/schema/Account.Phone'
import AnnualRevenue from '@salesforce/schema/Account.AnnualRevenue'
import Industry from '@salesforce/schema/Account.Industry'

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Ldsdemo extends LightningElement {


    fields={
        AccName:Name,
        AccPhone:Phone,
        AccRevenue:AnnualRevenue,
        AccIndustry:Industry
    }

    handlesuccess(e){

        alert(e.detail.id)
    }

    
    submithandler(e){

        const revenue=this.template.querySelector('.rev')
        if(revenue.value<100){

            this.dispatchEvent(new ShowToastEvent({
                title:'Annual revenue cannot be less than 100',
                message:e.detail.message,
                variant:'error'
            }))

        }
        else{

            const fields=event.detail.fields;

            this.template.querySelector('lightning-record-edit-form').submit(fields);
        }


    }


}
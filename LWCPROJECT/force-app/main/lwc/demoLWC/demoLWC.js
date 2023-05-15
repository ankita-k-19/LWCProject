
import { LightningElement } from 'lwc';

export default class DemoLWC extends LightningElement {

        topic='USER DETAILS';
        user={
            FirstName:'Ankita',
            Role:'SalesforceDeveloper',
            LicenseType:'SalesforceAdmin',

        }
        userCompanyDetails=[
            'IBM',
            'Arvind Krishna',
            'IT Consulting',
            50000,
            {
                Location:'INdia',
                zip:12345
            }
        ]

        get companyName(){

            return this.userCompanyDetails[0];
        }
        get ceo(){

            return this.userCompanyDetails[1];
        }
        get domain(){

            return this.userCompanyDetails[2];
        }
        get noOfEmployees(){

            return this.userCompanyDetails[3];
        }
        get companyAddress(){

            return this.userCompanyDetails[4];
        }


       Roleuser;

       handleInputChange(event) {
        
        this.Roleuser = event.detail.value;
    }

}
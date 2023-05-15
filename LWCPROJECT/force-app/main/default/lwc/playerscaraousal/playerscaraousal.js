import { LightningElement, api } from 'lwc';
const CARD_VISIBLE='slds-show';
const CARD_HIDDEN='slds-hide';
export default class Playerscaraousal extends LightningElement {



    player=[]

    @api
    get slideval(){

        return this.players;
    }


    set slideval(data){

       this.players=data.map((item,index )=> {
            return item.index==0?{
                ...item,
                slideindex:index+1,
                classval:CARD_VISIBLE

            }:{
                ...item,
                slideindex:index+1,
                classval:CARD_HIDDEN


            };
        });

    }



}
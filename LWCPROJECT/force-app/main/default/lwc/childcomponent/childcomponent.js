import { LightningElement ,api} from 'lwc';

export default class Childcomponent extends LightningElement {

    @api val;
    @api maxslidervalue;


    @api reset(e){

        this.val=0;

    }

}
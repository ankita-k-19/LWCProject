import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {

    number1=0;
    number2=0;
    result;
    
    input1(event){

        this.number1=event.detail.value;
        return this.number1;
    }

    input2(event){

        this.number2=event.detail.value;
        return this.number2;
    }


    handleClickAdd(event){

        this.result=parseInt(this.number1)+parseInt(this.number2);;
        return this.result;

    }

    handleClickSub(event){

        this.result=parseInt(this.number1)-parseInt(this.number2);
        return this.result;
    }

    handleClickMul(event){

        this.result=parseInt(this.number1)*parseInt(this.number2);
        return this.result;
    }

    handleClickDiv(event){

        this.result=parseInt(this.number1)%parseInt(this.number2);

    }


}
import { LightningElement } from 'lwc';

export default class DemoComponent extends LightningElement {

    


    employee=[
        {id:1,Name:"Harsh Mehta"},
        {id:2,Name:"jEOY TIM"},
        {id:3,Name:"Alexander Ghrambell"}
    ]
    
    handleClick(e){
        
        
        const sampleinput=e.target.dataset
        this.template.querySelector("lightning-input[data-id='input']").value=sampleinput.empname
        console.log(e.target.dataset);

    }


}
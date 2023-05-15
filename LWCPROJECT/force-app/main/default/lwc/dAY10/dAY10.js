import { LightningElement ,track} from 'lwc';

export default class DAY10 extends LightningElement {
    

    
    input;
    @track todolist=[
        {
            id:1,
            TaskName:"Running"
        },
        {
            id:2,
            TaskName:"Practice"
        },
        {
            id:3,
            TaskName:"Relax"
        },
    
    

       
    ]


    handleInputChange(e){

        this.input=e.target.value;
        
    }

    handleClick(){

        
        this.todolist.push({
            id:this.todolist.length+1,
            TaskName:this.input,
        });
   

    }

}
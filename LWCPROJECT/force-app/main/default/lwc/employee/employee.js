import { LightningElement ,track} from 'lwc';

export default class Employee extends LightningElement {

    click=false;
    @track filterarray=[];
    @track Employees=[
        {
            Name: "Mark Zukerberg",
            Salary:40000,
            Position:"CEO"

        },
        {
            Name:"Anand Mahindra",
            Salary:70000,
            Position:"Lead Developer"

        },
        {
            Name:"Sai Jack",
            Salary:90000,
            Position:"CFO"

        },
        {
            Name:"Amy lui",
            Salary:7000,
            Position:"Developer dB"

        }
    ]

    input;
    handleInputChange(e){

        this.input=parseInt(e.target.value);
        
        //this.filterarray=this.Employees.filter(em => em.Salary > this.input);

    }

    
    handleClick(){

       
        this.click=true;
        this.filterarray=this.Employees.filter(em => em.Salary > this.input);
        
    }

    

   

    

}
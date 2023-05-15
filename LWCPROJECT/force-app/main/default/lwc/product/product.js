import { LightningElement, track} from 'lwc';

export default class Product extends LightningElement {

    
    //click=false;
    @track product={
        Name:'ToothPaste',
        Price:80,
        Stock:0,
    }

   
    handleInputChange(e){
        this.StockVal=e.target.value
        return this.StockVal
    }
   

    handleClick(et){

        this.product.Stock=this.product.Stock+parseInt(this.StockVal);
       
        
        //this.click=true; 
        
        

    }


    }    

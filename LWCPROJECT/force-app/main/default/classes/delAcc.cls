public class delAcc implements Queueable{
    
    public void execute(QueueableContext context){
        
        list<Account> acc=[SELECT ID FROM Account WHERE CreatedDate=LAST_YEAR];
        
        delete acc;
    }

}
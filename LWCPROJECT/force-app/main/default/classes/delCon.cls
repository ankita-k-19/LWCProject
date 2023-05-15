public class delCon implements Queueable{
    
    public void execute(QueueableContext context){
        
        list<Contact> con=[SELECT ID FROM CONTACT WHERE CreatedDate=LAST_YEAR];
        
        delete con;
        
        integer delay=1;
        ID jobId=System.enqueueJob(new delAcc(), delay);
        system.debug('The ID for the child job is'+jobID);
    }

}
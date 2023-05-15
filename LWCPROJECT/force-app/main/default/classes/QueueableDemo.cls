public class QueueableDemo implements Queueable,Database.AllowsCallouts {
    
    public void execute(Queueablecontext con){
        
        database.executeBatch(new leadprocessor(), 10);
    }

}
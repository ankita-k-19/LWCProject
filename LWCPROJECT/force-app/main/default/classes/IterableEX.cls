public class IterableEX implements Database.Batchable<Account>{
    
      public list<Account> acclist;
    
    public IterableEX(list<Account> acc){
        acclist=acc;
    }
    
      public Iterable<Account> start(Database.BatchableContext bc)
    {
        return acclist;
    }
    
    public void execute(Database.BatchableContext bc,list<Account> listacc){
        
    }
    
    
    public void finish(Database.BatchableContext bc){
        
    }
         


    
}
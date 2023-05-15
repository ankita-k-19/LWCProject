public class SchedulableDemo implements Schedulable {
    
    public void execute(SchedulableContext ctx) {
       list<Account> acc=[SELECT ID FROM ACCOUNT];
       Database.executeBatch(new IterableEX(acc),10);
    }
}
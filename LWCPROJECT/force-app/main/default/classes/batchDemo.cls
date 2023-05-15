public class batchDemo implements Database.Batchable<sObject>,Database.stateful{
    
    
    public Database.QueryLocator start (Database.BatchableContext bc){
         
                system.debug('start ');

        String Query='SELECT ID,Name From Account';
        return Database.getQueryLocator(Query);
    }
    
    public void execute(Database.BatchableContext bc,list<Account> records){
        
        system.debug('excute');
        list<Account> accToupdate=new list<Account>();
        for(Account a: records){
            
            a.Name=a.Name + 'batchdemo';
            accToupdate.add(a);
        }
        update accToupdate;
        
                             

    }
    
    public void finish(Database.BatchableContext bc){
        
          AsyncApexJob job = [SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        EmailUtility.sendEmail(job.id,job.Status,job.CreatedBy.Email);
        notificationUtility.send_notification();

    }

}
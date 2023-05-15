public class leaddemo implements Database.Batchable<sobject>{
    
    public Database.QueryLocator start (Database.BatchableContext bc){
         
        String query='SELECT ID,LASTNAME,STATUS FROM LEAD WHERE CreatedDate=Last_n_days:180';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc,list<lead> leadlist){
        
        list<Lead> updateleads=new list<lead>();
        for(lead l:leadlist){
            
            l.status='Closed-Not Converted';
            updateleads.add(l);
            
            
        }
        update updateleads;

    }
    
    public void finish(Database.BatchableContext bc){
        
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        EmailUtility.sendEmail(job.id,job.Status,job.CreatedBy.Email);

    }



}
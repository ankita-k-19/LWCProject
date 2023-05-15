public class LeadProcessor implements Database.Batchable<sobject>,Database.stateful {
    
    
    public integer count=0;
    public database.QueryLocator start(Database.BatchableContext bc)
    {
        string query='SELECT ID,Name FROM Lead';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc,list<Lead> leadlist){
        list<lead> leadsToUpdate=new list<lead>();
        for(Lead l:leadlist){
            l.LeadSource='Dreamforce';
            leadsToUpdate.add(l);
        }
        update leadsToUpdate;
        count+=1;
    }
    
    
    public void finish(Database.BatchableContext bc){
         
 /**       AsyncApexJob job = [SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        system.debug(job);
    **/}

}
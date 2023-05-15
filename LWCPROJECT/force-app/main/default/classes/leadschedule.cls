public class leadschedule implements Database.Batchable<sobject>{
    
    public Database.QueryLocator start (Database.BatchableContext bc){
         
        String query='SELECT ID,Leadsource FROM LEAD where Leadsource=null';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc,list<lead> leadlist){
        
        list<Lead> updateleads=new list<lead>();
        for(lead l:leadlist){
            
            l.LeadSource='DreamForce';
            updateleads.add(l);
            
            
        }
        update updateleads;

    }
    
    public void finish(Database.BatchableContext bc){
        
        
    }



}
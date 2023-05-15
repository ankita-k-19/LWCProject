public class ABCCompanyBatch implements Database.Batchable<sobject>{
    
    public database.QueryLocator start(Database.BatchableContext bc)
    {
        string query='SELECT ID,LASTNAME,Days_since_LastActivity__C FROM LEAD WHERE Days_since_LastActivity__C>5';
        return Database.getQueryLocator(query);
    }
    
    
    public void execute(Database.BatchableContext bc,list<lead> leads){
        //ID OF SALESMANAGER
        User userid=[select id from user where username='ssale98@gmail.com'];
        
        list<lead> leadtoUpdate=new list<lead>();
        list<task> tskList=new list<task>();
        
        for(lead l:leads)
        {
            //UPDATE THE OWNER ID
            l.OwnerId=userid.id;
            leadtoUpdate.add(l);
            
            Task tsk = new Task();
					 tsk.Subject = 'Task to reset the Days_since_last_Activity field';
					 tsk.Status = 'Open';
					 tsk.Priority = 'Normal';
					 tsk.WhatId = l.ID;
					 tskList.add(tsk);
        }
        
        if(leadtoUpdate.size()>0){
            update leadtoUpdate;
            insert tsklist;
        }
               
    }
    
    public void finish(Database.BatchableContext bc){
        
    }
}
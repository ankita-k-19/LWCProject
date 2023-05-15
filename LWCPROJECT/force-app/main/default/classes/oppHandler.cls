public class oppHandler {
    
    
    public static void close_task(list<Opportunity> opp){
        set<ID> oppIds=new set<ID>();
        for(Opportunity o: opp){
            
            oppIds.add(o.id);
            
        }
        
        list<Task> tasks=new list<Task>();
        tasks=[Select whatId,Status From Task WHERE whatId IN:oppIds];
        
        
        Map<ID,list<Task>> oppwithTaskMap=new Map<ID,list<Task>>();
        
        for(Task t:tasks){
            
            oppwithTaskMap.put(t.WhatId,new list<Task> {t});
            
        }
        
        list<task> taskstoupdate=new list<task>();
        for(Opportunity o:opp){
            if(o.StageName=='Closed Won' || o.StageName=='Closed Lost')
            {
                
                list<Task> tasklisttemp = oppwithTaskMap.get(o.id);
                
                for(task t : tasklisttemp){
                    
                    t.status='completed';
                    taskstoupdate.add(t);
                }
            }
            
        } 
        
        
        if(taskstoUpdate.size()>0){
            update taskstoUpdate;
        }
        
        
        
        
        
    }
    
}
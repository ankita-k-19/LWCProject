public class ZoneMarketStore implements Database.Batchable<sobject> {
    
    
    //Zone_Code__c
    
    public database.QueryLocator start(database.BatchableContext bc){
        
        String query='SELECT ID,Name,Zone_Code__c FROM STORE__C where Zone_Code__c!=null and Zone__c=null';
        return database.getQueryLocator(query);
        
    }
    
    public void execute(database.BatchableContext bc,list<Store__c> storelist){
        
        
        
        set<string> s=new set<string>();
        for (store__C stores:storelist){
            s.add(stores.Zone_Code__c);
        }
        
        list<Zone__c> existingZones=[SELECT NAME FROM Zone__c where Name IN:s ];
        map<string,id> existingZoneMap=new map<string,id>();
        
        for(Zone__c z:existingZones){
            existingZoneMap.put(z.Name,z.id);
        }
        
        list<Store__c> updateStore=new list<Store__c>();
        
        list<Zone__C> newZones=new list<Zone__C>();
        
        for(store__c sT:storelist){
            
            if (existingZoneMap.containskey(sT.Zone_Code__C)){
                
                sT.Zone__c=existingZoneMap.get(sT.Zone_Code__C);
                updateStore.add(st);   
                
            }
            else{
                
                
                Zone__C newZone=new Zone__C();
                newZone.Name=sT.Zone_Code__c;
                if(newZones.contains(newZone)){
                   
                }else
                {
                     newZones.add(newZone);
                }
            }
            
        }
        update updateStore;
        
        if(newZones.size()>0){
            insert newZones;
            
             list<Store__c> updateStorenewZone=new list<Store__c>();
            map<string,id> newZoneMap=new map<string,id>();
            
            for(Zone__c z:newZones){
                newZoneMap.put(z.Name,z.id);
            }
             for(store__c sT:storelist){
            
            if (newZoneMap.containskey(sT.Zone_Code__C)){
                
                sT.Zone__c=newZoneMap.get(sT.Zone_Code__C);
                updateStorenewZone.add(st);   
                
            }
        }
            
            update updateStorenewZone;
        
        
    }
        
    }
    
    
    
    
    public void finish (database.BatchableContext bc){
        
    }
    
}
public class Market implements Database.Batchable<sobject> {
    
    
    //Zone_Code__c
    
    public database.QueryLocator start(database.BatchableContext bc){
        
        String query='SELECT ID,Name,Zone_Code__c,Market_Code__c,Market__c,Zone__c FROM STORE__C where Market_Code__c!=null and Market__c=null';
        return database.getQueryLocator(query);
        
    }
    
    public void execute(database.BatchableContext bc,list<Store__c> storelist){
        
        
        
        set<string> s=new set<string>();
        for (store__C stores:storelist){
            s.add(stores.Market_Code__c);
        }
        
        list< Market__c> existingmarkets=[SELECT NAME FROM Market__c where Name IN:s ];
        map<string,id> existingmarketMap=new map<string,id>();
        
        for(Market__c z:existingmarkets){
            existingmarketMap.put(z.Name,z.id);
        }
        
        list<Store__c> updateStore=new list<Store__c>();
        
        list<Market__c> newmarketlist=new list<Market__c>();
        
        for(store__c sT:storelist){
            
            if (existingmarketMap.containskey(sT.Market_Code__c)){
                
                sT.Market__c=existingmarketMap.get(sT.Market_Code__c);
                updateStore.add(st);   
                
            }
            else{
                
                
                Market__c newMarket=new Market__c();
                newMarket.Name=st.Market_Code__c;
                newMarket.SW_Zone_Name__c=st.Zone__c;
            
                if(newmarketlist.contains(newMarket)){
                   
                }else
                {
                     newmarketlist.add(newMarket);
                }
            }
            
        }
        update updateStore;
        
        if(newmarketlist.size()>0){
            insert newmarketlist;
            
             list<Store__c> updateStorenewMarket=new list<Store__c>();
            map<string,id> newMarketMap=new map<string,id>();
            
            for(Market__c m:newmarketlist){
                newMarketMap.put(m.Name,m.id);
            }
             for(store__c sT:storelist){
            
            if (newMarketMap.containskey(sT.Market_Code__c)){
                
                sT.Market__c=newMarketMap.get(sT.Market_Code__c);
                updateStorenewMarket.add(st);   
                
            }
        }
            
            update  updateStorenewMarket;
        
        
    }
        
    }
    
    
    
    
    public void finish (database.BatchableContext bc){
        
    }
    
}
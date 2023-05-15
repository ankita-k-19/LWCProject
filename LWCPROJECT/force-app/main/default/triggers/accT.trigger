trigger accT on Account (before update) {

   string acc=json.serialize(Trigger.new);
    
   if(System.IsBatch() == false && System.isFuture() == false){ 
          AccountProcessor.AccountProcessormethod(acc);  
   }
   
    
}
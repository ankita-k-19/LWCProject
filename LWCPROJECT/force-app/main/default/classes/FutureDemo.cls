public class FutureDemo {

    @invocableMethod
    public static void demoMethod(){
        futureMethod();
    }
    
    
    @future
    //as a future method cannot take sobject as a parameter 
    //we have converted sobject(from trigger) into string using json class.
    public static void futureMethod(){
        
        Messagingdemo.sendSingleMessage();
        
    }
}
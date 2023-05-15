@isTest
public class AddPrimaryContactTest {
    
    @TestSetUP 
    static void setupAcc(){
        
        list<Account> acclistNY=new list<Account>();
        
        for (integer i=1;i<51;i++){
            Account a=new Account(Name='Test'+i,BillingState='NY');
            acclistNY.add(a);
        }   
        
        list<Account> acclistCA=new list<Account>();
        
        for (integer i=1;i<51;i++){
            Account a=new Account(Name='Test'+i,BillingState='CA');
            
            acclistNY.add(a);
        }   
        insert accListNY;
        insert accListCA;
        
    }
    
    @isTest static void testQueueable(){
        
        Test.startTest();
        System.enqueueJob(new AddPrimaryContact(new contact(LastName='test'),'CA'));
        Test.stopTest();
        
         for (Account a :[Select Id, BillingState, (Select Id From Contacts) From Account]) {
            system.assert((a.BillingState == 'NY' && a.Contacts.Size() == 0) || (a.BillingState == 'CA' && a.Contacts.Size() == 1));
        }
            
        
       
    }
    

}
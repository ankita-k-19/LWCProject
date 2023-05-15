@isTest
public class LeadProcessorTest {
    
    @testsetup static void addrecords(){
        
        list<lead> newLeads=new list<lead>();
        
        for(integer i=1;i<=200;i++){
            
            lead l=new lead();
            l.LastName='NewLead '+i;
            l.Company='ABCfox entertainment';
            l.Status='Open-Not Contacted';
            newLeads.add(l);
        }
        insert newLeads;
        
    }
    
    @istest static void testBatch(){
        
        Test.startTest();
        LeadProcessor lp=new LeadProcessor();
        id batchid=Database.executeBatch(lp);
        Test.stopTest();
        
        System.assertEquals(200,[select count() from lead where leadsource='Dreamforce']);

    }

}
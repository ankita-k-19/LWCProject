@isTest
private class TestQueueDemo {
    
    
    @isTest static void queue(){
        
        Test.startTest();
        System.enqueueJob(new QueueableDemo());
        Test.stopTest();
        Account acct = [SELECT Name,Phone FROM Account WHERE Name='Lakme cosmetics' LIMIT 1];
        System.assertNotEquals(null, acct);
        System.assertEquals('8907661528', acct.Phone);
        
    }

}
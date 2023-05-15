public class EmailUtility {

    public static void sendEmail(id jobid,string status,string emailadd){
        
       Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();

        String[] sendToAdd=new String[]{emailadd};
        
        email.setToAddresses(sendToAdd);
        email.setSubject('Batch Job Status');
        email.setPlainTextBody('The job with' +jobid +'has been' +status);
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
        
    }
    
     public static void sendEmailscheduledjob(string emailstr,string emailadd){
        
       Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();

        String[] sendToAdd=new String[]{emailadd};
        
        email.setToAddresses(sendToAdd);
        email.setSubject('NOT CONTACTED LEADS');
        email.setPlainTextBody('The following leads were created today and not contacted'+emailstr);
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
        
    }
    
}
public class Messagingdemo {

    public static void sendSingleMessage(){
        
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        
        // Strings to hold the email addresses to which you are sending the email.
        String[] toAdd=new String[]{'ankikadam@gmail.com'};
        String[] ccAdd=new String[]{'ankitakadamrocks@gmail.com'};
        
       // Assign the addresses for the To and CC lists to the mail object.
       mail.setToAddresses(toAdd);
       mail.setCcAddresses(ccAdd);
       
        // Specify the address used when the recipients reply to the email. 
       mail.setReplyTo('ankikadam98@gmail.com');
        
        // Specify the name used as the display name.
       mail.setSenderDisplayName('Ankita');

       // Specify the subject line for your email address.
       mail.setSubject('Welcome to salesforce!!!!!');
        
        // Specify the text content of the email.
      mail.setPlainTextBody('Your ORG is setup');
        
        
     Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
           
    }
    
    public static void sendMassEmails(){
        
        
        EmailTemplate et = [SELECT Id,Subject, Body FROM EmailTemplate WHERE Name ='ApexEmailTemplateMessage'];
        List<Contact> contacts=[Select Id,Email From Contact Where LastName='Eze'];
        List<Id> conIds=new List<Id>();
        List<Id> whatIds=new List<Id>();
        for(Contact c: contacts) {
            conIds.add(c.Id);
            whatIds.add(et.Id);
        }
		
        Messaging.MassEmailMessage email = new Messaging.MassEmailMessage(); 
        email.setTargetObjectIds(conIds);
        email.setTemplateId(et.id);
        Messaging.SendEmail(New Messaging.MassEmailMessage[] {email});
        Messaging.SendEmailResult[] result=Messaging.sendEmail(new Messaging.MassEmailMessage[]{email});
 
        if(Result[0].Success){
            system.debug('1st Email send successfullyy');
        }
        
        
        
    }
}
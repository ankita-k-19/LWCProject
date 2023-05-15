public class notificationUtility {
    
    
    public static void send_notification(){
        
        // Get the Id for our custom notification type
        CustomNotificationType notificationType = 
            [SELECT Id, DeveloperName 
             FROM CustomNotificationType 
             WHERE DeveloperName='Notify_me'];
       
        // Create a new custom notification
        Messaging.CustomNotification notification = new Messaging.CustomNotification();

        // Set the contents for the notification
        notification.setTitle('Apex Custom Notification');
        notification.setBody('The notifications are coming from INSIDE the Apex!');

        // Set the notification type and target
        notification.setNotificationTypeId(notificationType.Id);
        Account targetid=[SELECT ID FROM ACCOUNT LIMIT 1];
        notification.setTargetId(targetId.ID);
        
        //SET THE RECIPIENTS IDS
        SET<String> recipientsIds=new SET<String>();
        recipientsIds.add(UserInfo.getUserId());
        
        // Actually send the notification
        try {
            notification.send(recipientsIds);
        }
        catch (Exception e) {
            System.debug('Problem sending notification: ' + e.getMessage());
        }
        
        
        
        
        
    }

}
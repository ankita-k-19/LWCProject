public class ScheduleJobday5 implements schedulable{
    
    
    public void execute(SchedulableContext sc){
        
        list<lead> newlead=new list<lead>();
        newlead=[SELECT ID,lastName,STATUS FROM LEAD WHERE CreatedDate = TODAY and Status='Open - Not Contacted'];
       
         string[] emailmsg=new string[newlead.size()];
        for(lead l:newlead){
            
            emailmsg.add('The lead with id  '+l.id +' and Name  ' +l.LastName+'  has not been contacted');
        }
        string emailstring=string.join(emailmsg,',');
        EmailUtility.sendEmailscheduledjob(emailstring,'ankikadam98@gmail.com');
        
        
        
    }

}
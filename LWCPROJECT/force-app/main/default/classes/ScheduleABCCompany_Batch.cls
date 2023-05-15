public class ScheduleABCCompany_Batch implements Schedulable{
    
    public void execute(SchedulableContext sc){
        
        Database.executeBatch(new ABCCompanyBatch(), 10);
    }

}
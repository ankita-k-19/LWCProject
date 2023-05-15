public class AddPrimaryContact implements Queueable{
    
    public Contact newcontact;
    public string state;
    
    public AddPrimaryContact(Contact c,String StateAbb){
        this.newcontact=c;
        this.state=StateAbb;
        
    }
    
    public void execute(QueueableContext context) {
        
       list<Account> accList=[SELECT ID,Name,BillingState FROM Account
                              WHERE BillingState=:State LIMIT 200]; 
        
        list<Contact> c=new list<Contact>();
        For(Account a: accList){
            
            Contact con = newcontact.clone(false, false, false, false);
            con.AccountId=a.id;
            c.add(con);
        }
        insert c;
    }

}
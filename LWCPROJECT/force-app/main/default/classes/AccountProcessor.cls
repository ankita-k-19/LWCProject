public class AccountProcessor {

    @future
    public static void AccountProcessormethod(string jsonstring){
        
        list<Account> Accountlist=(list<Account>)json.deserialize(jsonstring,list<Account>.class);
        set<id> AccountId=new set<id>();
        for (account a:accountlist){
            AccountId.add(a.Id);
        }
        Integer countcontact=0;
        list<Account> acclist=[SELECT Id,(SELECT ID FROM CONTACTS) 
            FROM ACCOUNT WHERE ID IN:AccountId];
        for(Account a:acclist){
            a.Number_Of_Contacts__c=a.Contacts.size();
        }
        update acclist;
            }
}
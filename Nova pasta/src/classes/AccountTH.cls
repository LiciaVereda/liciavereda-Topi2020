/** *
* @author liciavereda
*/

public virtual with sharing class AccountTH extends TriggerHandler {

    List<Account> newAccounts;

    public AccountTH(){
        this((List<Account>) Trigger.new);
    }

    public AccountTH (List<Account> newAccounts) {
        this.newAccounts = newAccounts;
    }

    virtual
    override
    public void afterInsert() {
        System.debug('Trigger de conta acionada' + Trigger.operation.Type);
        List<Account> accounts =  new List<Account> ();
        EventRepository event = new EventRepository();
        List<Event> event = new List<Event> ();
        accounts = (List<Account>) Trigger.new;

        for(Account accounts : accounts){
            if(accounts.Category_c == 'Premium' && accounts.AnnualRevenue > 1000.000){
            event.add(event.createEvent(newAccounts));
            }
        }
        if(event.size() > 0) {
            insert event;
        }
    }
}
/** *
* @author liciavereda
*/

public virtual with sharing class AccountTH {

    List<Account> newAccounts;



public AccountTH(){
    this((List<Account>) Trigger.new);
}

public AccountTH (List<Account> newAccounts){
    this.newAccounts = newAccounts;
}

virtual
override
public void afterInsert(){
    System.debug('Trigger de conta acionada' + Trigger.operation.Type);
    for(Account accounts : Trigger.new){
        if(newAccounts.Category_c == 'Premium' && newAccounts.AnnualRevenue > 1000.000){
            EventRepository.createEvent(newAccounts);
        }
    }
  
}


}
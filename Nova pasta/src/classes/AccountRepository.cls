/**
 * @author - liciavereda
 */


public virtual class AccountRepository {

    virtual
    public List <Account> create (List<Account> accounts) {
        insert accounts;
        return accounts;
    }

    virtual
    public List <Account> store (List<Account> accounts) {
        insert accounts;
        return accounts;
    }

    virtual
    public void remove (List<Account> accounts) {
        delete accounts;
        
    }

}
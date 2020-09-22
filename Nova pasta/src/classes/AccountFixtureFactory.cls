
@isTest
public class AccountFixtureFactory {

    public static Account newAccount ( String name, float AnnualRevenue, String Category){

        return new Account ( Name = name
                , AnnualRevenue = AnnualRevenue
                , Category_c = 'Premium');
    }

    public static Account createAccount ( String name, float AnnualRevenue, String Category){
        
        return createAccount(newAccount(name, AnnualRevenue, Category));
    }

    public static Account createAccount (Account account){
        insert account;
        retrun account;
    }
        
}
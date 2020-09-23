@isTest
public class AccountTest {
        static void AccountByPremium(){
            List<Account> accounts = new List<Account> (); 
            Account account1 = new Account (Name = 'Celebbor', Category__c = 'Premium', AnnualRevenue = 120000000);
            Account account2 = new Account (Name = 'Cel', Category__c = 'Standard', AnnualRevenue = 300000);
    
            accounts.add(account1);
            accounts.add(account2);
            insert accounts;   
        }      
}
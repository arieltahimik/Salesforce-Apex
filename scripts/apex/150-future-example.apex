
// AccountCalculator Class
public class AccountCalculator {
    @future
    public static void countContacts(List<Id> accIds) {
        List<Account> accList = [
            SELECT Id, (SELECT Id FROM Contacts) 
            FROM Account WHERE Id IN :accIds];
        
        for (Account acc : accList) {
            acc.Number_of_Contacts__c = acc.Contacts.size();
        }
        
        if (!accList.isEmpty()) {
            update accList;
        }
    }
}


//  Anonymous Apex for AccountCalculator class
List<Account> accList = [SELECT Id FROM Account];
List<Id> accIds = new List<Id>();
for (Account acc : accList) {
    accIds.add(acc.id);
}
AccountCalculator.countContacts(accIds);


// AccountCalculatorTest Test Class
@isTest
public class AccountCalculatorTest {
    @isTest
    private static void countContactsTest() {
        List<Account> accList = new List<Account>();
        for (Integer i=0; i<250; i++) {
            accList.add(new Account(Name='Test'+i));
        }
        
        insert accList;
        
        List<Contact> conList = new List<Contact>();
        List<Id> accIds = new List<Id>();
        for (Account acc : accList) {
            conList.add(new Contact(FirstName='Test', LastName=acc.Name, AccountId=acc.Id));
            accIds.add(acc.id);
        }
        insert conList;
        
        Test.startTest();
        AccountCalculator.countContacts(accIds);
        Test.stopTest();
        
        List<Account> accs = [SELECT Id, Number_of_Contacts__c FROM Account];
        System.assertEquals(1, accs[0].Number_of_Contacts__c, 'Contacts are not counted successfully');
    }
}

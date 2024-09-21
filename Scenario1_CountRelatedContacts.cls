public class Scenario1_CountRelatedContacts {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id, Name FROM Contacts)
                                 FROM Account
                                 WHERE Phone != NULL];
        
        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                System.debug(acc.Name + ' has ' + acc.Contacts.size() + ' Related Contacts');
            }
        }
    }
}

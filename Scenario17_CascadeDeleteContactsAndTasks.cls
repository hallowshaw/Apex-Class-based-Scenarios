public class Scenario17_CascadeDeleteContactsAndTasks {
    public static void deleteAccountAndRelatedRecords(Id accountId) {
        Account accToDelete = [SELECT Id, (SELECT Id FROM Contacts), (SELECT Id FROM Tasks) 
                               FROM Account WHERE Id = :accountId LIMIT 1];

        List<Contact> contactsToDelete = accToDelete.Contacts;
        List<Task> tasksToDelete = accToDelete.Tasks;

        if (!contactsToDelete.isEmpty()) {
            delete contactsToDelete;
        }

        if (!tasksToDelete.isEmpty()) {
            delete tasksToDelete;
        }

        delete accToDelete; // Delete the account last
    }
}

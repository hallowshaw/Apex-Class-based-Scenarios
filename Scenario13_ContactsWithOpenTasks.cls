public class Scenario13_ContactsWithOpenTasks {
    public static void execute() {
        List<Contact> conList = [SELECT Id, Name, (SELECT Id FROM Tasks WHERE Status != 'Completed') 
                                 FROM Contact];

        if (!conList.isEmpty()) {
            for (Contact con : conList) {
                System.debug(con.Name + ' has ' + con.Tasks.size() + ' open tasks.');
            }
        }
    }
}

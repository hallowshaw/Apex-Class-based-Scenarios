public class Scenario9_AccountsWithoutOpportunities {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id FROM Opportunities) 
                                 FROM Account WHERE (SELECT Id FROM Opportunities).size() = 0];

        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                System.debug(acc.Name + ' has no associated Opportunities.');
            }
        }
    }
}

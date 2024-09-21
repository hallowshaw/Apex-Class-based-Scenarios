public class Scenario11_RecentOpportunitiesForAccounts {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id, CloseDate FROM Opportunities WHERE CloseDate = LAST_N_DAYS:30)
                                 FROM Account WHERE Phone != NULL];

        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                System.debug(acc.Name + ' has ' + acc.Opportunities.size() + ' Opportunities in the last 30 days.');
            }
        }
    }
}

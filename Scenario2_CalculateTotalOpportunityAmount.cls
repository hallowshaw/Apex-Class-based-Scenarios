public class Scenario2_CalculateTotalOpportunityAmount {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id, Amount FROM Opportunities)
                                 FROM Account
                                 WHERE Phone != NULL];
        
        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                Decimal total = 0;
                for (Opportunity opp : acc.Opportunities) {
                    if (opp.Amount != NULL) {
                        total += opp.Amount;
                    }
                }
                System.debug(acc.Name + ' has ' + total + ' Worth Opportunities.');
            }
        }
    }
}

public class Scenario7_AverageOpportunityAmount {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id, Amount FROM Opportunities)
                                 FROM Account WHERE Phone != NULL];

        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                Decimal total = 0;
                Integer count = 0;

                for (Opportunity opp : acc.Opportunities) {
                    if (opp.Amount != NULL) {
                        total += opp.Amount;
                        count++;
                    }
                }
                Decimal average = count > 0 ? total / count : 0;
                System.debug(acc.Name + ' has an average Opportunity amount of ' + average);
            }
        }
    }
}

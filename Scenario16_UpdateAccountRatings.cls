public class Scenario16_UpdateAccountRatings {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id, Amount FROM Opportunities) 
                                 FROM Account WHERE (SELECT Id FROM Opportunities).size() > 0];

        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                Decimal totalAmount = 0;
                Integer count = 0;

                for (Opportunity opp : acc.Opportunities) {
                    if (opp.Amount != NULL) {
                        totalAmount += opp.Amount;
                        count++;
                    }
                }
                Decimal averageAmount = count > 0 ? totalAmount / count : 0;

                if (averageAmount > 100000) {
                    acc.Rating = 'Hot';
                } else if (averageAmount > 50000) {
                    acc.Rating = 'Warm';
                } else {
                    acc.Rating = 'Cold';
                }
            }
            update accList; // Update all at once to avoid governor limits
        }
    }
}

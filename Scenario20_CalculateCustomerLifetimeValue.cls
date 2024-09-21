public class Scenario20_CalculateCustomerLifetimeValue {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Amount, CloseDate FROM Opportunities) 
                                 FROM Account];

        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                Decimal totalRevenue = 0;
                for (Opportunity opp : acc.Opportunities) {
                    if (opp.CloseDate >= System.today().addYears(-1)) {
                        totalRevenue += opp.Amount != NULL ? opp.Amount : 0;
                    }
                }
                acc.Customer_Lifetime_Value__c = totalRevenue; // Assuming the field exists
            }
            update accList; // Update all at once to avoid governor limits
        }
    }
}

public class Scenario4_UpdateTotalCountInAccounts {
    public static void execute() {
        List<Account> accList = [SELECT Id, Total_Count__c, (SELECT Id FROM Contacts)
                                 FROM Account WHERE CreatedDate = THIS_YEAR];
        
        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                acc.Total_Count__c = acc.Contacts.size();
            }
            update accList;
        }
    }
}

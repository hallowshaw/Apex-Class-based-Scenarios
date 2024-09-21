public class Scenario12_UpdateLeadStatus {
    public static void execute() {
        List<Lead> leadList = [SELECT Id, Status, AccountId FROM Lead WHERE AccountId != NULL];

        if (!leadList.isEmpty()) {
            for (Lead lead : leadList) {
                Account acc = [SELECT Id, CreatedDate FROM Account WHERE Id = :lead.AccountId LIMIT 1];

                if (acc.CreatedDate >= System.today().addDays(-30)) {
                    lead.Status = 'New Account';
                } else {
                    lead.Status = 'Existing Account';
                }
            }
            update leadList; // Update all at once to avoid governor limits
        }
    }
}

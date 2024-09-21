public class Scenario14_TotalOpenCasesForAllAccounts {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id FROM Cases WHERE Status = 'Open') 
                                 FROM Account];

        Integer totalOpenCases = 0;

        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                totalOpenCases += acc.Cases.size();
            }
            System.debug('Total Open Cases across all Accounts: ' + totalOpenCases);
        }
    }
}

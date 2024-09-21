public class Scenario6_CountOpenCases {
    public static void execute() {
        List<Account> accList = [SELECT Id, Name, (SELECT Id, Status FROM Cases WHERE Status = 'Open')
                                 FROM Account WHERE Phone != NULL];

        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                System.debug(acc.Name + ' has ' + acc.Cases.size() + ' Open Cases');
            }
        }
    }
}

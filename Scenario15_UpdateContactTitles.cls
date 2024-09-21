public class Scenario15_UpdateContactTitles {
    public static void execute() {
        List<Contact> conList = [SELECT Id, Title, Account.Type 
                                 FROM Contact WHERE AccountId != NULL];

        if (!conList.isEmpty()) {
            for (Contact con : conList) {
                if (con.Account.Type == 'Customer') {
                    con.Title = 'Valued Customer';
                } else if (con.Account.Type == 'Prospect') {
                    con.Title = 'Potential Client';
                }
            }
            update conList; // Update all at once to avoid governor limits
        }
    }
}

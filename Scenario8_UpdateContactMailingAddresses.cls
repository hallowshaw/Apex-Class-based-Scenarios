public class Scenario8_UpdateContactMailingAddresses {
    public static void execute() {
        List<Contact> conList = [SELECT Id, MailingStreet, MailingCity, MailingState, Account.BillingStreet, Account.BillingCity, Account.BillingState
                                 FROM Contact WHERE AccountId != NULL];

        if (!conList.isEmpty()) {
            for (Contact con : conList) {
                if (con.MailingStreet == NULL && con.Account.BillingStreet != NULL) {
                    con.MailingStreet = con.Account.BillingStreet;
                }
                if (con.MailingCity == NULL && con.Account.BillingCity != NULL) {
                    con.MailingCity = con.Account.BillingCity;
                }
                if (con.MailingState == NULL && con.Account.BillingState != NULL) {
                    con.MailingState = con.Account.BillingState;
                }
            }
            update conList; // Update all at once to avoid governor limits
        }
    }
}

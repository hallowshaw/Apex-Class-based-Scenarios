public class Scenario5_UpdateContactPhoneNumbers {
    public static void execute() {
        List<Contact> conList = [SELECT Id, Phone, Account.Phone
                                 FROM Contact WHERE CreatedDate = THIS_YEAR];
        
        if (!conList.isEmpty()) {
            for (Contact con : conList) {
                if (con.Phone == NULL && con.Account.Phone != NULL) {
                    con.Phone = con.Account.Phone;
                }
            }
            update conList; // Moved outside the loop to prevent DML limits
        }
    }
}

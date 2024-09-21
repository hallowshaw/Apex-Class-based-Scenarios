public class Scenario3_UpdateOpportunityDescriptions {
    public static void execute() {
        List<Opportunity> oppList = [SELECT Id, StageName FROM Opportunity WHERE CreatedDate = THIS_YEAR];
        
        if (!oppList.isEmpty()) {
            for (Opportunity opp : oppList) {
                if (opp.StageName == 'Closed Won') {
                    opp.Description = 'Opportunity is closed won';
                } else if (opp.StageName == 'Closed Lost') {
                    opp.Description = 'Opportunity is closed lost';
                } else {
                    opp.Description = 'Opportunity is open';
                }
            }
            update oppList;
            System.debug('Descriptions updated successfully');
        }
    }
}

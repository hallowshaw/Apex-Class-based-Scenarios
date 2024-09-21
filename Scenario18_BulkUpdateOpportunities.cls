public class Scenario18_BulkUpdateOpportunities {
    public static void execute() {
        List<Opportunity> oppList = [SELECT Id, StageName, CloseDate 
                                      FROM Opportunity 
                                      WHERE StageName = 'Prospecting' 
                                      AND CloseDate < System.today()];

        if (!oppList.isEmpty()) {
            for (Opportunity opp : oppList) {
                opp.StageName = 'Qualification';
            }
            update oppList; // Bulk update all at once
            System.debug('Updated ' + oppList.size() + ' Opportunities to Qualification.');
        }
    }
}

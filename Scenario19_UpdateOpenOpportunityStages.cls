public class Scenario19_UpdateOpenOpportunityStages {
    public static void execute() {
        List<Opportunity> oppList = [SELECT Id, StageName FROM Opportunity WHERE StageName = 'Prospecting'];

        if (!oppList.isEmpty()) {
            for (Opportunity opp : oppList) {
                opp.StageName = 'Qualification'; // Change stage from Prospecting to Qualification
            }
            update oppList; // Bulk update all at once
            System.debug('Updated ' + oppList.size() + ' Opportunities to Qualification.');
        }
    }
}

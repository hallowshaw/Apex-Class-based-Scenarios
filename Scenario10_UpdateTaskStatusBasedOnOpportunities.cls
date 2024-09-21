public class Scenario10_UpdateTaskStatusBasedOnOpportunities {
    public static void execute() {
        List<Task> taskList = [SELECT Id, WhatId, Status FROM Task WHERE WhatId != NULL];

        if (!taskList.isEmpty()) {
            for (Task task : taskList) {
                Opportunity opp = [SELECT Id, StageName FROM Opportunity WHERE Id = :task.WhatId LIMIT 1];

                if (opp.StageName == 'Closed Won') {
                    task.Status = 'Completed';
                } else if (opp.StageName == 'Closed Lost') {
                    task.Status = 'Deferred';
                } else {
                    task.Status = 'In Progress';
                }
            }
            update taskList; // Update all at once to avoid governor limits
        }
    }
}

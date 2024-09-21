
# Apex Scenarios

This repository contains various Apex trigger and class scenarios to demonstrate different functionalities in Salesforce. Each scenario is encapsulated in its own class. Below is a brief description of each scenario:

## Scenario Descriptions

### [Scenario1_CountRelatedContacts.cls](Scenario1_CountRelatedContacts.cls)
- Retrieves all accounts with a phone number and counts the related contacts for each account.

### [Scenario2_CalculateTotalOpportunityAmount.cls](Scenario2_CalculateTotalOpportunityAmount.cls)
- Calculates the total opportunity amount for each account and displays the sum of related opportunities.

### [Scenario3_UpdateOpportunityDescriptions.cls](Scenario3_UpdateOpportunityDescriptions.cls)
- Updates the description field of an opportunity based on its stage (Closed Won, Closed Lost, or Open).

### [Scenario4_UpdateTotalCountInAccounts.cls](Scenario4_UpdateTotalCountInAccounts.cls)
- Updates a custom field 'Total_Count__c' on the Account object with the number of related contacts.

### [Scenario5_UpdateContactPhoneNumbers.cls](Scenario5_UpdateContactPhoneNumbers.cls)
- Fills in the contact's phone number with the account's phone number if the contact phone is missing.

### [Scenario6_CountOpenCases.cls](Scenario6_CountOpenCases.cls)
- Retrieves and counts the number of open cases for each account.

### [Scenario7_AverageOpportunityAmount.cls](Scenario7_AverageOpportunityAmount.cls)
- Calculates the average opportunity amount for each account.

### [Scenario8_UpdateContactMailingAddresses.cls](Scenario8_UpdateContactMailingAddresses.cls)
- Updates the mailing address of contacts based on a certain logic or condition.

### [Scenario9_AccountsWithoutOpportunities.cls](Scenario9_AccountsWithoutOpportunities.cls)
- Identifies accounts that have no related opportunities.

### [Scenario10_UpdateTaskStatusBasedOnOpportunities.cls](Scenario10_UpdateTaskStatusBasedOnOpportunities.cls)
- Updates the status of tasks related to an account based on the status of opportunities.

### [Scenario11_RecentOpportunitiesForAccounts.cls](Scenario11_RecentOpportunitiesForAccounts.cls)
- Retrieves and displays recent opportunities for each account.

### [Scenario12_UpdateLeadStatus.cls](Scenario12_UpdateLeadStatus.cls)
- Updates the status of leads based on specific criteria.

### [Scenario13_ContactsWithOpenTasks.cls](Scenario13_ContactsWithOpenTasks.cls)
- Identifies contacts that have open tasks associated with them.

### [Scenario14_TotalOpenCasesForAllAccounts.cls](Scenario14_TotalOpenCasesForAllAccounts.cls)
- Sums up the total number of open cases across all accounts.

### [Scenario15_UpdateContactTitles.cls](Scenario15_UpdateContactTitles.cls)
- Updates the title field for contacts based on a set of conditions.

### [Scenario16_UpdateAccountRatings.cls](Scenario16_UpdateAccountRatings.cls)
- Updates the rating field for accounts based on business logic.

### [Scenario17_CascadeDeleteContactsAndTasks.cls](Scenario17_CascadeDeleteContactsAndTasks.cls)
- Demonstrates a cascading delete of contacts and tasks when an account is deleted.

### [Scenario18_BulkUpdateOpportunities.cls](Scenario18_BulkUpdateOpportunities.cls)
- Performs a bulk update on opportunities to change their stage or amount.

### [Scenario19_UpdateOpenOpportunityStages.cls](Scenario19_UpdateOpenOpportunityStages.cls)
- Updates the stage of all open opportunities for accounts based on custom logic.

### [Scenario20_CalculateCustomerLifetimeValue.cls](Scenario20_CalculateCustomerLifetimeValue.cls)
- Calculates the Customer Lifetime Value (CLV) for each account based on historical data.

# Apex Scenarios for Practice

This repository contains various Apex code scenarios to help understand and practice different functionalities in Salesforce development. Below are the scenario descriptions, each focusing on specific Apex use cases. You can click on each scenario name to view the corresponding code.

---

## [Scenario1: Retrieve Accounts with Related Contacts](Scenario1_CountRelatedContacts.cls)

**Description:**  
Retrieve all accounts that have a phone number and display the count of related contacts for each account.

---

## [Scenario2: Calculate Total Opportunity Value for Accounts](Scenario2_TotalOpportunityValue.cls)

**Description:**  
Fetch all accounts that have a phone number, calculate the total value of opportunities associated with each account, and display the result.

---

## [Scenario3: Update Opportunity Descriptions Based on Stage](Scenario3_UpdateOpportunityDescription.cls)

**Description:**  
Retrieve all opportunities created this year, update the description based on the stage of the opportunity (e.g., "Closed Won", "Closed Lost", or "Open"), and save the changes.

---

## [Scenario4: Update Total Contact Count in Account](Scenario4_UpdateTotalContactCount.cls)

**Description:**  
Fetch all accounts created this year, count the total number of contacts associated with each account, and update the custom field `Total_Count__c` to reflect this.

---

## [Scenario5: Update Contact Phone Numbers Using Account Phone](Scenario5_UpdateContactPhone.cls)

**Description:**  
Fetch all contacts created this year and update their phone number if it is missing, using the phone number from the associated account.

---

## [Scenario6: Retrieve Open Opportunities in Early Stages](Scenario6_OpenOpportunitiesEarlyStages.cls)

**Description:**  
Retrieve all opportunities that are still in an early stage, such as "Prospecting" or "Qualification," and display their details.

---

## [Scenario7: Update Contact's Email Domain Based on Account Website](Scenario7_UpdateEmailDomainFromWebsite.cls)

**Description:**  
Fetch all contacts that do not have an email and generate an email address for them by combining their first name and the domain from their account's website.

---

## [Scenario8: Mark Accounts with High Opportunity Values](Scenario8_MarkHighValueAccounts.cls)

**Description:**  
Retrieve all accounts with opportunities totaling above a specific threshold, and update a custom field `High_Value__c` to mark them as high-value accounts.

---

## [Scenario9: Automatically Assign Ownership of Opportunities Based on Region](Scenario9_AssignOpportunityByRegion.cls)

**Description:**  
Retrieve opportunities and assign them to different users based on the region of the related account, such as Europe, APAC, or North America.

---

## [Scenario10: Delete Old Tasks Related to Closed Opportunities](Scenario10_DeleteOldTasks.cls)

**Description:**  
Identify tasks related to closed opportunities that are more than one year old and delete them.

---

## [Scenario11: Calculate Average Opportunity Age](Scenario11_CalculateAverageOpportunityAge.cls)

**Description:**  
Calculate the average age of open opportunities based on their creation date and display the result.

---

## [Scenario12: Auto-Update Account Industry Based on Opportunity Type](Scenario12_UpdateAccountIndustryByOppType.cls)

**Description:**  
Automatically update the industry field of an account based on the type of the latest opportunity related to that account.

---

## [Scenario13: Identify Inactive Accounts](Scenario13_IdentifyInactiveAccounts.cls)

**Description:**  
Retrieve accounts that haven't had any activity (tasks, events, or opportunities) in the last year and mark them as inactive.

---

## [Scenario14: Reassign Opportunities for Inactive Accounts](Scenario14_ReassignOppForInactiveAccounts.cls)

**Description:**  
Identify opportunities related to inactive accounts and reassign them to a default owner for follow-up.

---

## [Scenario15: Send Notification for Opportunities Near Close Date](Scenario15_NotifyOpportunitiesNearClose.cls)

**Description:**  
Send an email or notification to the owner of opportunities that are approaching their close date but are not yet marked as "Closed Won" or "Closed Lost."

---

## [Scenario16: Flag High-Risk Opportunities Based on Close Date and Stage](Scenario16_FlagHighRiskOpportunities.cls)

**Description:**  
Identify opportunities that have been in an open stage for a long time but are nearing their close date, and flag them as high risk.

---

## [Scenario17: Identify Duplicate Contacts](Scenario17_IdentifyDuplicateContacts.cls)

**Description:**  
Retrieve contacts that have the same first name, last name, and email address, and flag them as potential duplicates.

---

## [Scenario18: Update Last Contact Date on Accounts](Scenario18_UpdateLastContactDate.cls)

**Description:**  
Fetch the most recent activity (task or event) for each account and update a custom field `Last_Contact_Date__c` to reflect the date of that activity.

---

## [Scenario19: Update Opportunity Stages for Open Opportunities](Scenario19_UpdateOpenOpportunityStages.cls)

**Description:**  
Retrieve all open opportunities with the stage "Prospecting" and update their stage to "Qualification."

---

## [Scenario20: Calculate Total Opportunities in Each Stage](scenarios/Scenario20_CalculateTotalOpportunitiesByStage.cls)

**Description:**  
Count the number of opportunities in each stage for reporting purposes, and store the results in custom fields on the related accounts.

Feature: member posts suggestion
	As a organization member
	I want to post suggestions
	So that organization owners can act on them

Scenario: Access suggestions page via URL and enter suggestion box passcode
	Given I am not viewing the suggestion box page
	And I do not have valid suggestion box credentials 
	When I enter a suggestions page URL in my browser
	Then I should see the suggestion box passcode form

Scenario: Enter suggestion box passcode
	Given I am viewing the suggestion box passcode form 
	When I enter a valid passcode
	Then The corresponding suggestion box form should be displayed

Scenario: Fill out suggestion box form
	Given I am viewing the suggestion form 
	When When I enter suggestion information abnd
	Then The corresponding suggestion box form should be displayed

Scenario: post suggestion with no message
Scenario: post suggestion with no email or invalidly formatted email
Scenario: post anonymous suggestion

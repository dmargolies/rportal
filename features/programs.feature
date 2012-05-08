Feature: Programs
	Scenario: Viewing program index
		Given I am signed in as a user
		When I visit "/programs"
		Then I should see the program index


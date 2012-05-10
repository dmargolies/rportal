Feature: Programs
	Scenario: Logged in user viewing program index
		Given I am signed in as a user
		And one program exists
		When I visit "/programs"
		Then I should see the program index
		And I should see the "Show" link
		And show me the page
		And I should not see the "Edit" link
		And I should not see the "Destroy" link


	Scenario: Non-logged in user viewing program index
		Given I am not signed in
		And one program exists
		When I visit "/programs"
		Then I should see the program index
		And I should see the "Show" link
		And I should not see the "Edit" link
		And I should not see the "Destroy" link



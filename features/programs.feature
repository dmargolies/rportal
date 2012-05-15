Feature: Programs
	Scenario: Logged in user viewing program index
		Given I am signed in as a user
		And one program exists
		When I visit "/programs"
		Then I should see the program index
		And I should see the "Show" link
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
	
	Scenario: Logged in user with role "dj" viewing program index
		Given I am signed in as a user with the role "dj"
		And one program exists
		When I visit "/programs"
		Then I should see the program index
		And I should see the "Show" link
		And I should not see the "Edit" link
		And I should not see the "Destroy" link

	Scenario: Logged in user with role "admin" viewing program index
		Given I am signed in as a user with the role "admin"
		And one program exists
		When I visit "/programs"
		Then I should see the program index
		And I should see the "Show" link
		And I should see the "Edit" link
		And I should see the "Destroy" link

	Scenario: Non-logged in user views a single program
		Given I am not signed in
		And one program exists
		When I visit the home page
		And I click the "Shows" link
		And I click the "Show" link
		Then I should see the program's name 
		And I should see "Start Time"
		And I should see "End Time"
		And I should see the "Playlists" link
		And I should not see the "Edit" link

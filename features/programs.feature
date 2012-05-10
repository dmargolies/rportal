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

	Scenario: Logged in Admin viewing program index
		Given I am signed in as a user with the role "admin"
		And one program exists
		When I visit "/programs"
		Then I should see the program index
		And I should see the "Show" link
		And I should see the "Edit" link
		And I should see the "Destroy" link

	#Scenario: Logged-in DJ viewing program index
		#Given the following program records
			#| name		         | start     | end      |
			#| some other show  | 04:30     | 07:30  	|
			#| some show        | 07:30     | 09:30  	|
		#And I am signed in as a user with role "dj"
		#When I visit "/programs"
		#Then I should see the program index
		#And I should see the "Show" link
		#And I should not see the "Edit" link



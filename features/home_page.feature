Feature: Home Page
	Scenario: User is not signed in
		Given I am not logged in
		When I visit the home page
		Then I should see the home page
	
	Scenario: User can sign in
		Given I am not logged in
		When I visit the home page
		And I click the sign in link
		And I fill in the form with valid data
		And I click "Sign in"
		Then I should see the home page

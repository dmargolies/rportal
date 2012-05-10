Given /^I am not signed in$/ do
end

When /^I fill in the form with valid data$/ do
  @user = User.create(:email => "foo@bar.com", :password => "password")
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
end

Given /^I am signed in as a user$/ do
  @user = User.create(:email => "foo@bar.com", :password => "password")
  visit root_url
  click_link "Sign In"
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Sign in"
end

Given /^I am signed in as a user with the role "([^"]*)"$/ do |arg1|
  @user = User.create(:email => "foo_dj@bar.com", :password => "password", :role => "#{arg1}")
  visit root_url
  click_link "Sign In"
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Sign in"
end

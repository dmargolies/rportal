When /^I fill in the form with valid data$/ do
  @user = User.create(:email => "foo@bar.com", :password => "password")
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
end

Given /^I am signed in as a user$/ do
  @user = User.create(:email => "foo@bar.com", :password => "password")
  visit root_url
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Sign in"
end

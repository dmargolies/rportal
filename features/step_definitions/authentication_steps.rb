When /^I fill in the form with valid data$/ do
  @user = User.create(:email => "foo@bar.com", :password => "password")
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
end


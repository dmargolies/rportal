Given /^I am not logged in$/ do
  current_user = nil
end

When /^I visit the home page$/ do
  visit root_url
end

Then /^I should see the login form$/ do
  page.should have_selector ".new_user"
end

Then /^I should see the home page$/ do
  page.should have_selector "title", :text => "WPRK - Home"
end

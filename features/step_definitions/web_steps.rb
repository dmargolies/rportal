When /^I click "([^"]*)"$/ do |arg1|
  click_button "#{arg1}"
end

When /^I click the "([^"]*)" link$/ do |arg1|
  click_link "#{arg1}"
end

When /^I visit "([^"]*)"$/ do |arg1|
  visit  arg1
end

When /^I click the sign in link$/ do
  visit root_url 
  click_link "Sign In"
end

Then /^I should not see "([^"]*)"$/ do |arg1|
  page.should_not have_content "#{arg1}"
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content "#{arg1}"
end

Then /^I should not see the "([^"]*)" link$/ do |arg1|
  page.should have_no_selector "a", text: "#{arg1}"
end

Then /^show me the page$/ do
  save_and_open_page
end

Then /^I should see the "([^"]*)" link$/ do |arg1|
  page.should have_selector "a", text: "#{arg1}"
end


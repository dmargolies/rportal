When /^I click "([^"]*)"$/ do |arg1|
  click_button "#{arg1}"
end

When /^I visit "([^"]*)"$/ do |arg1|
  visit  arg1
end

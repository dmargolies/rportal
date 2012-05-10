Then /^I should see the program index$/ do
  page.should have_selector "#program_index"
end

Given /^one program exists$/ do
  @program = Program.create(:name => "Some Program", :start => Time.now, :end => Time.now + 1.hour)
end


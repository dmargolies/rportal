Then /^I should see the program index$/ do
  page.should have_selector "#program_index"
end

Given /^one program exists$/ do
  @program = Program.create(:name => "Some Program", :start => Time.now, :end => Time.now + 1.hour)
end

Given /^the following program records$/ do |table|
  table.hashes.each do |hash|
    Program.create(:name => hash[:name], :start => hash[:start], :end => hash[:end])
  end
end

Then /^I should see the program's name$/ do
  page.should have_content "Some Program"
end

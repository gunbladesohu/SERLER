Given(/^I'm logged in as user$/) do
  puts :TODO
end

When(/^I click on a "(.*?)" column in a displayed search$/) do |column_name|
  puts "TODO (needs JavaScript)"
end

Then(/^I should not see date column$/) do
  assert !page.has_content?(/date/i)
end

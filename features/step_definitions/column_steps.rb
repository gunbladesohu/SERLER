Given(/^I'm logged in as user$/) do
end

When(/^I click on a "(.*?)" column in a displayed search$/) do |date|
	click_on(date)
end

Then(/^I should not see date column$/) do
	assert !page.has_content?(/date/i)
end

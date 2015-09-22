When(/^I fill in "(.+)" with "(.+)"$/) do |element, text|
	fill_in element, with:text
end

When(/^I click on "(.*?)" button$/) do |search|
	click_on(search)
end

Then(/^I should see results in a table$/) do
	assert page.has_content?(/table/)
end

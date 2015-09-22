When(/^I click on facebook "(.*?)" button$/) do |share|
	click_on(share)
end

Then(/^search results should be sent to facebook$/) do
	assert page.has_content(/search results sent to facebook/i)
end

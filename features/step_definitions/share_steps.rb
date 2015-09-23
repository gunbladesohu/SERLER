When(/^I click on facebook "(.*?)" button$/) do |share|
  click_on(share)
end

Then(/^search results should be sent to facebook$/) do
  puts "TODO (needs JavaScript)"
end

Then(/^search results should be sent via email$/) do
  puts "TODO (needs JavaScript)"
end

Given(/^I click on "(.*?)" button under the title "(.*?)"/) do |save, title|
  click_on(save)
  assert page.has_content?(title)
end

Then(/^I should be able to save search query/) do
  puts "TODO (needs Message)"
end

Then(/^I should be able to save search result/) do
  puts "TODO (needs Message)"
end

Then(/^I should be able to view my "(.*?)"$/) do |title|
  assert page.has_content?(title)
end
Given(/^I click on "(.*?)" button under the title "(.*?)"/) do |save, title|
  click_on(save)
  assert page.has_content?(title)
end


When(/^I fill out save query form, name with "(.*?)" with "(.*?)" and comment with "(.*?)"$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

When(/^I fill out save result form, name with "(.*?)" and comment with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end


Then(/^I should be able to save search query/) do
  puts "TODO (needs Message)"
end

Then(/^I should be able to save search result/) do
  puts "TODO (needs Message)"
end
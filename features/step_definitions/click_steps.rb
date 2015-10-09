When(/^I click on a "(.*?)" column in a displayed search$/) do |column_name|
  puts "TODO (needs JavaScript)"
end

When(/^I click on a "(.*?)" column$/) do |column_name|
  puts "TODO (needs JavaScript)"
end

When(/^I click on facebook "(.*?)" button$/) do |share|
  click_on(share)
end

When(/^I click on "(.*?)" button$/) do |search|
  click_button(search)
end

When(/^I click on "(.*?)"$/) do |arg1|
  click_on arg1
end

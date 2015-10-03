When(/^I click on "(.*?)" button$/) do |save|
  click_on(save)
end

Then(/^I should be able to save search query/) do
  page.driver.browser.switch_to.alert.accept
end

Then(/^I should be able to save search results/) do
  page.driver.browser.switch_to.alert.accept
end
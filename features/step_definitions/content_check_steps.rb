Then (/^I should read in the title bar of the Browser: "([^"]*)"$/) do |page_title|
  expect(page).to have_title page_title
end

Then(/^I should see "(.*?)"$/) do |arg|
  expect(page).to have_text arg
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  expect(page).to have_no_content /arg1/i
end

Then (/^I should read in the title bar of the Browser: "([^"]*)"$/) do |page_title|
  expect(page).to have_title page_title
end

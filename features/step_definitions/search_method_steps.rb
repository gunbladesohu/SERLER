When(/^I select "(.*?)" from methodolgy$/) do |methodolgy|
  page.select ( methodolgy, :from => "Methodology")
end

When(/^I select "(.*?)" from methods$/) do |method|
  page.select ( method, :from => "method")
end

Then(/^I should see results based on different constraints$/) do
  assert page.has_content?(/scrum/i)
end

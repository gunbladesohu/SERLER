Then (/^I should read in the title bar of the Browser: "([^"]*)"$/) do |page_title|
expect(page).to have_title page_title
end

Then(/^I should see results resorted$/) do
	puts :TODO
end

Then(/^I should not see date column$/) do
	assert !page.has_content?(/date/i)
end

Then(/^I should see "(.*?)"$/) do |arg|
	expect(page).to have_text arg
end

Then(/^I should not see "(.*?)"$/) do |arg1|
	expect(page).to have_no_content /arg1/i
end

Then(/^I should see results in a table$/) do
	assert page.assert_selector('table')
end

Then(/^I should see name description of evidence item related "(.*?)" and "(.*?)" in methods$/) do | arg1, arg2|
	# @search_evidence_item = EvidenceItem.ransack(:name => arg1, :name => arg2)
 #    @search_evidence_item.build_condition
	# has_value_and_name = false
	# all("tr").each do |tr|
	# 	if tr.has_content?(/arg1/i) && tr.has_content?(/arg2/i)
	# 		has_value_and_name = true
	# 		break
	# 	end
	# end
	#assert has_value_and_name
	expect(page).to have_text arg1 and arg2
end

Then(/^I should see results based on different constraints$/) do
  pending
  # assert page.has_content?(/scrum/i)
end

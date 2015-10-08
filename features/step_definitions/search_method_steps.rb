When(/^I select "(.*?)" from Methodologies$/) do |arg1|
  page.select( arg1, :from => "q_c_0_v_0_value")
end

When(/^I select "(.*?)" from Methods$/) do |arg1|
  page.select( arg1, :from => "q_c_1_v_0_value")
end
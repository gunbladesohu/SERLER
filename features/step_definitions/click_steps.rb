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
	
	@saved_search_result = SavedSearchResult.new(:name => arg1, :comment => arg1)
	@saved_search_query = SavedSearchQuery.new(:name => arg1, :comment => arg1)
	if arg1 == "result for 3"
		if @saved_search_result.save
			@saved_search_results = SavedSearchResult.all
			click_on arg1
		end
	elsif arg1 == "query for 3"
		if @saved_search_query.save
			@saved_search_queries = SavedSearchQuery.all
			click_on arg1
		end
	else
		click_on arg1
	end
end
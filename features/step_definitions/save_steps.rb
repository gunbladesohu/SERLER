Given(/^I click on "(.*?)" button under the title "(.*?)"/) do |save, title|
  assert page.has_content?(title)

  @saved_search_result = SavedSearchResult.new(:name => "test", :comment => "result")	
  @saved_search_query = SavedSearchQuery.new(:name => "test", :comment => "query")
  
  if @saved_search_result.save
  	click_on(save)
  elsif @saved_search_query.save
  	click_on(save)
  end

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
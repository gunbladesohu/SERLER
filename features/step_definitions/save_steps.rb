Then(/^I should be able to view my "(.*?)"$/) do |title|
  assert page.has_content?(title)
  @saved_search_result = SavedSearchResult.new(:name => "result", :comment => "result")
  @saved_search_query = SavedSearchQuery.new(:name => "query", :comment => "query")
  if title == "Saved search results"
    if @saved_search_result.save
      @saved_search_results = SavedSearchResult.all
      assert page.has_content?(/result/i)
    end
  elsif title == "Saved search query"
    if @saved_search_query.save
      @saved_search_queries = SavedSearchQuery.all
      assert page.has_content?(/query/i)
    end
  end
end

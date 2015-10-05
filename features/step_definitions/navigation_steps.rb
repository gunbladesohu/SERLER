When (/^I am on the index page$/) do
  visit root_path
end

When (/^I am on the search page$/) do
  # TODO: remove hard-coding
  visit "/search"
end

Given(/^I visit saved search results page$/) do
  visit saved_search_results_path
end

Given(/^I visit saved search queries page$/) do
  visit saved_search_queries_path
end
